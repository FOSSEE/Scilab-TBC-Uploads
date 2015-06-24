

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.13 ")

//Thickness of wall in m
L = 0.5;
//Initial temperature in degree C
Ti = 60;
//Combustion gas (Surrounding) temperature in degree C
Tinfinity = 900;
//Heat transfer coefficient in W/m2K
h = 25;
//Thermal conductivity in W/mk
k = 1.25;
//Specific heat in J/KgK
c = 837;
//Density in kg/m3
rho = 500;
//Thermal diffusivity in m2/s
alpha = 0.000003;
//Required temperature to achieve in degree C
Ts = 600;

//Calculating temperature ratio
z = (Ts-Tinfinity)/(Ti-Tinfinity);
//Reciprocal biot number
bi = k/(h*L);


//From Fig. 2.42(a) we find that for the above conditions the Fourier number= 0.70 at the midplane.
//Time in hours
t = ((0.7*L)*L)/alpha;
disp("Time in hours is")
//Time in hours
t = t/3600

//The temperature distribution in the wall 16 h after the transient was
//initiated can be obtained from Fig. 2.42(b) for various values of x/L

disp("Temperature distribution in degree C is")
disp("  (x/l)  = 1.00 0.80 0.60 0.40 0.20")
disp("Fraction = 0.13 0.41 0.64 0.83 0.96")

//The heat transferred to the wall per square meter of surface area during
//the transient can be obtained from Fig. 2.42(c).
disp("Heat transfer in J/m2 is")
//Heat transfer in J/m2
Q = ((c*rho)*L)*(Ti-Tinfinity)
