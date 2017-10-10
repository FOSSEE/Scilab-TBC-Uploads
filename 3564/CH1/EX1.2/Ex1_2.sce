
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Introduction to Fluid Mechanics, 3rd Ed. William S. Janna Chapter - 1 Example # 1.2 ")

//Solving part a
disp("Part a)")
//Volume of water in m3
V = 1;
//Mass of water in kg
m = 1000;
//Acceleration due to gravity in m/s2
a = 9.81;

//Weight of 1 m3 water in N
disp("Weight of water in N is")
F = m*a

//Solving part b
disp("Part b)")
//New aceleration due to gravity in m/s2
a = (2*a)/5;
//Calculating new weight of the water in N
disp("Weight of water on Mars in N is")
F = m*a
//Answer varies slightly because of round-off error
