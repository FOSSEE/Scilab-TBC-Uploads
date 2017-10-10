
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Introduction to Fluid Mechanics, 3rd Ed. William S. Janna Chapter - 1 Example # 1.1 ")

//Weight in lbf
F = 150;

//Solving part a
disp("Part a)")
//Acceleration due to gravity in ft/s2
a = 32.2;

//Calculating mass of the person in slug
disp("Mass of person in lbf.s2/ft (or slug) is")
m = F/a
//Answer varies slightly because of round-off error

//Solving part b
disp("Part b)")
//New aceleration due to gravity in ft/s2
a = a/6;
//Calculating new weight of the person in lbf
disp("Weight of person on the moon in lbf is")
F = m*a
