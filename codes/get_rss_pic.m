% load 'RSS_data.mat';%original rss signals
% load 'B.mat';% smoothing rss signals
[action_size,sample_size]=size(RSS_data);
for i=1:action_size
    for j=1:1
               rss_sample=RSS_data{i,j};
%                rss_smooth_sample_medfilt=medfilt1(RSS_data{i,j},5);
%                rss_smooth_sample =B{i,j};   
    end
    subplot(4,4,i);
%     plot(rss_sample,'r');
%     hold on;
    plot(rss_sample,'k','LineWidth',2,'MarkerSize',12);
      xlabel('Packets');
     ylabel('RSS','fontsize',8);
%      legend('Original Signals','Smooth Signals','location','best');
     
end
figure;

for i=1:16
    for j=1:1
               csi_sample=CSI_data{i,j};
%                rss_smooth_sample_medfilt=medfilt1(RSS_data{i,j},5);
%                rss_smooth_sample =B{i,j};   
              csi_sample_re=permute(csi_sample,[2,1,3]);
    end
    subplot(4,4,i);
%     plot(rss_sample,'r');
%     hold on;
    plot(csi_sample_re(:,10,1),'k','LineWidth',2,'MarkerSize',12);
      xlabel('Packets');
     ylabel('CSI','fontsize',8);
%      legend('Original Signals','Smooth Signals','location','best');
     
end