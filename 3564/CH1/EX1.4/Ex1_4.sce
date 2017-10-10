
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Introduction to Fluid Mechanics, 3rd Ed. William S. Janna Chapter - 1 Example # 1.4 ")

//Solving part a
disp("Part a)")
disp("Part a is theoretical and does not require computation")
disp("Final result is pi - p0 = 2*sigma/R")


//Solving part b
disp("Part b)")
//Diameter of droplet in cm
d = 0.01;//Authors have used 0.01 diameter for calculation while the diameter quoted in question is 0.1
//Using Appendix table A.5 for properties of water
//Surface tension sigma in N/m
sigma = 71.97/1000;
//Atmospheric pressure for droplet in N/m2 is
p0 = 101300;
//Radius of droplet in  m
R = 0.01*(d/2);
//Calculating pressure inside the droplet in N/m2
disp("Pressure inside the droplet in N/m2 is")
pi = p0+(2*sigma)/R
//Answer varies slightly because of round-off error
