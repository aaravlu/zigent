const lib = @import("zigent_lib");
const std = @import("std");

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    while (true) {
        try stdout.print("zigent> ", .{});
        var input: [256]u8 = undefined;
        const len = try stdin.readUntilDelimiterOrEof(&input, '\n');
        if (len) |line| {
            try stdout.print("You entered: {s}\n", .{line});
        } else {
            try stdout.print("\n", .{});
            break;
        }
    }
}
