const U = union {
    a: void,
    b: u64,
};
comptime {
    var u: U = .{.a = {}};
    const v = u.b;
    _ = v;
}

// access of inactive union field
//
// :7:16: error: access of union field 'b' while field 'a' is active
// :1:11: note: union declared here
