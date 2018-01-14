


csi_trace=read_bf_file('D:\matlab\small_empty_room\Train_data\a3_30.dat');

 [csi_size,~]=size(csi_trace);
 rss_samples=zeros(csi_size,3);
for i=1:csi_size
   csi_entry=csi_trace{i};
   rss_samples(i,1)=csi_entry.rssi_a;
   rss_samples(i,2)=csi_entry.rssi_b;
   rss_samples(i,3)=csi_entry.rssi_c;
end
plot(rss_samples);
% figure();
hold on;
rss_samples_std=std(rss_samples,0,2);
plot(rss_samples_std,'m*');
legend('Antenna A','Antenna B','Antenna C','Variance',0);
hold on;
