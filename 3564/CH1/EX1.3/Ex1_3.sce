
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Introduction to Fluid Mechanics, 3rd Ed. William S. Janna Chapter - 1 Example # 1.3 ")

//Solving part a
disp("Part a)")
//Mass in kg
m = 0.001;
//Deltay in mm
deltay = 5;
//Acceleration due to gravity in m/s2
g = 9.81;
//Area of contact in m2
A = 0.5;

//Using Appendix table A.5 for properties of linseed oil
//Viscosity myu in N.s/m2
myu = 0.0331;

//Force therefore in N is
F = m*g;
//Shear stress in N/m2 is
tau = F/A;

//Since shear stress is myu*(velocity gradient) i.e. myu*(deltaV/deltay)
//deltaV = V - 0 = V

//Velocity of the plate in mm/s is
disp("Velocity of the plate in mm/s is")
V = (tau*deltay)/myu
//Answer varies slightly because of round-off error

//Solving part b
disp("Part b)")
//Using Appendix table A.5 for properties of water
//Viscosity myu in N.s/m2
myu = 0.89/1000;

//Velocity of the plate in mm/s is
V = (tau*deltay)/myu;
disp("Velocity of the plate in m/s is")
V = V/1000
//Answer varies slightly because of round-off error

//Solving part c
disp("Part c)")
//Initial shear stress in N/m2 is
tau0 = 4;
//Inital viscosity myu0 in N.s/m2
myu0 = 0.004;
if tau<tau0 then
  disp("Applied shear stress is less than initial shear stress")
  disp("Therefore velocity of plate is 0 m/s")
end;
