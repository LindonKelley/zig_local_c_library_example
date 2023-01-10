const std = @import("std");
const print = std.debug.print;

const example = @cImport(@cInclude("example.h"));

pub fn main() anyerror!void {
    const a = example.add(2, 3);
    print("{}\n", .{a});
}

