const std = @import("std");
const User = @import("./models/user.zig").User;

pub fn main() void {
    const user = User{ .name = "goku", .power = 12000 };
    std.debug.print("{s}'s power level is {d}\n", .{ user.name, user.power });
    // User.diagnose(user);
    user.diagnose();
    std.debug.print("Power limit is: {d}\n", .{User.SUPER_POWER});
}

fn add(a: i64, b: i64) i64 {
    var sum = a;
    sum += b;
    return sum;
}
