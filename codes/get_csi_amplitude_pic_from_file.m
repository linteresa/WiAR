function samples = get_csi_amplitude_pic_from_file(url,name,fig)
csi_trace = read_bf_file(url);
csi_trace = get_csi_trace_sqeezed(csi_trace);
set(figure(fig),'WindowStyle','docked');
clf;
samples = get_csi_amplitude_pic_from_csitrace(csi_trace, name);

end

