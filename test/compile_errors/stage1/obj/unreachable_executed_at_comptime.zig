fn foo(comptime x: i32) i32 {
    comptime {
        if (x >= 0) return -x;
        unreachable;
    }
}
export fn entry() void {
    _ = foo(-42);
}

// unreachable executed at comptime
//
// tmp.zig:4:9: error: reached unreachable code
// tmp.zig:8:12: note: called from here
