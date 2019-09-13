%收集的dat数据有空包，此函数就是剔除空包
function ret = get_csi_trace_sqeezed(csi_trace)

i = length(csi_trace);
while i>=1 && isempty(csi_trace{i})
    i = i-1;
end
ret = csi_trace(1:i);

end