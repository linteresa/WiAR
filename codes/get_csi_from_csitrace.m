function samples=get_csi_from_csitrace(csi_trace)
[csi_size,~]=size(csi_trace);

samples=zeros(csi_size,3,30);
for ii=1:csi_size
    csi_entry = csi_trace{ii};
    csi_s=size(csi_entry);
    if(csi_s(1)==0)
        csi_size=ii;
        break;
    end
    csi = get_scaled_csi(csi_entry);
    csi=db(abs(squeeze(csi(1,:,:)).'));
    csi=csi';
    samples(ii,1,:)=csi(1,:);
    samples(ii,2,:)=csi(2,:);
    samples(ii,3,:)=csi(3,:);
end

for i=1:csi_size
    for j=1:3
        for k=1:30
            if samples(i,j,k)<-20
                samples(i,j,k) = 25;
            else
                if samples(i,j,k)>70
                    samples(i,j,k) = 25;
                end
            end
            
        end
    end
end
