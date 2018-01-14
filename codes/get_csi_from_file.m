function samples=get_csi_from_file(url)
csi_trace = read_bf_file(url);
csi_trace = get_csi_trace_sqeezed(csi_trace);
samples = get_csi_from_csitrace(csi_trace);
end