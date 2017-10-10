
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Introduction to Fluid Mechanics, 3rd Ed. William S. Janna Chapter - 1 Example # 1.8 ")

//Using Appendix table A.5 for properties of acetone
//Density in kg/m3
rho = 0.787*1000;
//Speed of sound in m/s
a = 1174;
//Isothermal bulk modulus in N/m2
k = (rho*a)*a;

//Change in volume is given to be -1 percent
//Assuming V = 1 cubic m so that deltaV/V = -0.01

//Initial volume in m3
V = 1;
//Change in volume in m3
deltaV = -0.01;


//Change in pressure in N/m2
disp("Change in pressure in N/m2 is")
deltap = -(k*deltaV)/V
//Answer varies slightly because of round-off error
