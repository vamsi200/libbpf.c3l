import std::io;
import libbpf;
import bpf;

fn int main(String[] args) {
    uint minor      = libbpf::libbpf_minor_version();
    uint major      = libbpf::libbpf_major_version();
    ZString version = libbpf::libbpf_version_string();
    ZString buf;

    int err = libbpf::libbpf_strerror(4000, buf, 128);
    io::printfn("err: %d", err);
    if (err == 0) io::printn(buf);

    ZString at = libbpf::libbpf_bpf_attach_type_str(BPF_CGROUP_INET_INGRESS);
    ZString st = libbpf::libbpf_bpf_link_type_str(BPF_LINK_TYPE_UNSPEC);
    ZString ts = libbpf::libbpf_bpf_map_type_str(Bpf_Map_Type.BPF_MAP_TYPE_UNSPEC);

    io::printn(ts);
    io::printn(at);
    io::printn(st);
    io::printn(minor);
    io::printn(major);
    io::printn(version);

    return 0;
}
