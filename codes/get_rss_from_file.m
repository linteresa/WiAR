function rss=get_rss_from_file(url)
csi_trace = read_bf_file(url);
csi_trace = get_csi_trace_sqeezed(csi_trace);
rss = get_rss_from_csitrace(csi_trace);
end