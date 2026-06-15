import std::io;
import libbpf;
import bpf;

fn int main(String[] args) {
    // uint minor      = libbpf::libbpf_minor_version();
    // uint major      = libbpf::libbpf_major_version();
    // ZString version = libbpf::libbpf_version_string();
    // char[128] buf;
    // 
    // int err = libbpf::libbpf_strerror(4001, &buf, 128);
    // String s = (String)buf[..];
    // io::printn(s);
    // 
    // ZString at = libbpf::libbpf_bpf_attach_type_str(BPF_CGROUP_INET_INGRESS);
    // ZString st = libbpf::libbpf_bpf_link_type_str(BPF_LINK_TYPE_UNSPEC);
    // ZString ts = libbpf::libbpf_bpf_map_type_str(Bpf_Map_Type.BPF_MAP_TYPE_UNSPEC);
    // 
    // io::printn(ts);
    // io::printn(at);
    // io::printn(st);
    // io::printn(minor);
    // io::printn(major);
    // io::printn(version);

//    io::printn(Bpf_Object_Open_Opts::size);
    // io::printn(bool::size);


io::printn(Bpf_Kprobe_Multi_Opts::size);
// io::printn((int)Probe_Attach_Mode.PROBE_ATTACH_MODE_DEFAULT);
// io::printn((int)Probe_Attach_Mode.PROBE_ATTACH_MODE_LEGACY);
// io::printn((int)Probe_Attach_Mode.PROBE_ATTACH_MODE_PERF);
// io::printn((int)Probe_Attach_Mode.PROBE_ATTACH_MODE_LINK);
// io::printn(Probe_Attach_Mode.PROBE_ATTACH_MODE_LEGACY);
// io::printn(Probe_Attach_Mode.PROBE_ATTACH_MODE_PERF);
// io::printn(Probe_Attach_Mode.PROBE_ATTACH_MODE_LINK);

    // io::printn(Bpf_Perf_Event_Opts::alignment);
    // io::printn($reflect(Bpf_Perf_Event_Opts.size).offset);
    // io::printn($reflect(Bpf_Perf_Event_Opts.bpf_cookie).offset);
    // io::printn($reflect(Bpf_Perf_Event_Opts.force_ioctl_attach).offset);
    // io::printn($reflect(Bpf_Perf_Event_Opts.dont_enable).offset);
    return 0;
}
