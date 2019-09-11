function [cell_array_sample, samples_rss]= loadsignal( pathdataset,num_actions, num_executions )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
num_actions = 16;
num_subject = 1;
 num_executions = 30;
 num_antenna_size = 3;   %(A,B,C)
num_subcarriers =30;


cell_array_sample={num_actions,num_subject*num_executions};
% index_samples=1;
% guolinlin={'726lzh_meeting','726szy_meeting','726yjw_meeting'};

for j = 1:num_actions
%     for k=1:num_subject
    for i =1:num_executions
%             filename = sprintf('%s%s%d',pathdataset,guolinlin{j},j,'_',i);
               % filename = sprintf('%s%s%d%s%d',pathdataset,'726yjw0',j,'_',i);
          % filename = sprintf('%s%s%d',pathdataset,guolinlin(j),i);%
         filename = sprintf('%s%s%s%d%s%d%s',pathdataset,'csi_','a',j,'_',i,'.dat');
           csi_trace = read_bf_file(filename);%frame*1cell
           csi_trace = get_csi_trace_sqeezed(csi_trace);
           [csi_size,~]=size(csi_trace);
           samples=get_csi_from_csitrace(csi_trace);%frame*3*30
           rss = get_rss_from_csitrace(csi_trace);%rss      
           
           samples_e=permute(samples,[3,1,2]);% 30*frame*antenna
           samples_rss{j,i}=rss;
           cell_array_sample{j,i}=samples_e;
           
            
    end

end

end



