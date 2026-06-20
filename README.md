# libbpf.c3l

C3 bindings for libbpf.

Source: https://github.com/libbpf/libbpf

## Supported Version

- libbpf v1.7.0

## Installation

Fetch using c3l:

```bash
c3l fetch https://github.com/vamsi200/libbpf.c3l
```

get c3l from:

- https://github.com/konimarti/c3l


## Example Usage

### Query libbpf Version

```c
import libbpf;

fn void test_version()
{
    ZString v = libbpf::libbpf_version_string();
    io::printfn("libbpf version: %s", v);

    uint major = libbpf::libbpf_major_version();
    uint minor = libbpf::libbpf_minor_version();

    io::printfn("libbpf %d.%d", major, minor);
}
```

### Open a BPF Object

```c
import libbpf;

fn void test_object_open()
{
    libbpf::BpfObject* obj = libbpf::bpf_object__open(TEST_OBJ_PATH);

    ZString name = libbpf::bpf_object__name(obj);
    io::printfn("opened object: %s", name);

    libbpf::bpf_object__close(obj);
}
```

### Attach a Raw Tracepoint

```c
fn void test_attach_raw_tracepoint()
{
    BpfObject* obj = open_full_or_skip("test_attach_raw_tracepoint");
    if (obj == null) return;

    BpfProgram* prog =
        libbpf::bpf_object__find_program_by_name(
            obj,
            "handle_raw_tp"
        );

    BpfLink* link =
        libbpf::bpf_program__attach_raw_tracepoint(
            prog,
            "sys_enter"
        );

    assert(link != null);

    libbpf::bpf_link__destroy(link);
    libbpf::bpf_object__close(obj);
}

```

## License

https://github.com/libbpf/libbpf is licensed under BSD-2-Clause OR LGPL-2.1.
