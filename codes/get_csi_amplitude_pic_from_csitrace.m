function samples= get_csi_amplitude_pic_from_csitrace(csi_trace, name )
%GET_CSI_AMPLITUDE_PIC_FROM_CSITRACE Summary of this function goes here
%   Detailed explanation goes here
[csi_size,~]=size(csi_trace);
%set(figure(fig),'WindowStyle','docked'); clf;
%csi_antA = zeros(30, csi_size);
%csi_antB = zeros(30, csi_size);
%csi_antC = zeros(30, csi_size);
samples=zeros(csi_size,3,30);
for ii=1:csi_size
    csi_entry = csi_trace{ii};
    csi_s=size(csi_entry);
    if(csi_s(1)==0)
        csi_size=ii;
        break;
    end
    csi = csi_entry.csi;
    csi = (abs(squeeze(csi(1,:,:)).'));
    csi = csi';
    samples(ii,1,:) = csi(1,:);
   % samples(ii,2,:) = csi(2,:);
   % samples(ii,3,:) = csi(3,:);

%     plot(db(abs(squeeze(csi(1,1,:)).')), '-b'); hold on;
%     plot(db(abs(squeeze(csi(1,2,:)).')), '-g'); hold on;
%     plot(db(abs(squeeze(csi(1,3,:)).')), '-r'); hold on;
    plot(csi(1,:), '-b'); hold on;
   % plot(csi(2,:), '-g'); hold on;
    %plot(csi(3,:), '-r'); hold on; 

end

legend('RX Antenna A', 'RX Antenna B', 'RX Antenna C', 'Location', 'SouthEast' );
xlabel('\bfSubcarrier index');
ylabel('\bfAmplitude [mW]');
axis([1,30,0,60]);
title(sprintf('\\bf%s', name)); 
%set(gca, 'XTick', 1:30);
c

end

