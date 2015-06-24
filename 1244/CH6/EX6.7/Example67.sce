

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 6 Example # 6.7 ")

//Temperature of airstream in degree C
Tair = 20;
//Velocity of air in m/s
U = 1.8;
//Side of circuit in m
L = 27/1000;
//Spacing in the circuit in m
H = 17/1000;

//At 20°C, the properties of air from Table 28, Appendix 2, are 

//Density in kg/m3
rho = 7700;
//Specific heat in J/kgK
c = 130;
//Thermal conductivity in W/mK
k = 0.0251;
//Kinematic viscosity in m2/s
nu = 0.0000157;
//Prandtl number
Pr = 0.011;

//Reynolds number
Re = (U*H)/nu;

//From Fig. (6.27), we see that the second integrated circuit is in the inlet region and estimate Nu2 =29.
//Nusselt number in second circuit
Nu2 = 29;
disp("Heat transfer coefficient along 2nd circuit in W/m2K")
//Heat transfer coefficient in W/m2K
hc2 = (Nu2*k)/L

//The sixth integrated circuit is in the developed region and from Eq. (6.79)
//Nusselt number in sixth circuit
Nu6 = 21.7;
disp("Heat transfer coefficient along 6th circuit in W/m2K")
////Heat transfer coefficient in W/m2K
hc6 = (Nu6*k)/L
