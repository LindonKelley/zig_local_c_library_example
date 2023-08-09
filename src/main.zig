const std = @import("std");
const print = std.debug.print;

const example = @cImport(@cInclude("example.h"));

pub fn main() anyerror!void {
    const a = example.add(2, 3);
    print("{}\n", .{a});
}

test "test example" {
    for (0..5) |a| {
        for (5..10) |b| {
            try std.testing.expect(example.add(@intCast(a), @intCast(b)) == a + b);
        }
    }
}
