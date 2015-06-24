

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.14 ")

//Radius of cylinder in m
ro = 0.05;
//Length of cylinder in m
L = 0.16;
//Thermal conductivity in W/mK
k = 0.5;
//Thermal diffusivity in m2/s
alpha = 0.0000005;
//Initial temperature in degree C
Ti = 20;
//Surrounding temperature in degree C
Tinfinity = 500;
//Heat transfer coefficient in W/m2K
h = 30;
//Time in mins
t = 30;

//Biot number
bi = (h*ro)/k;
//Fourier number
fo = ((alpha*t)*60)/((L*L)/4);

//From fig. 2.42(a)
//Po
P0 = 0.9;
//From fig. 2.42(a) and (b)
//Pl
PL = 0.243;
//From fig. 2.43(a)
//Co
C0 = 0.47;
//From fig. 2.43(a) and (b)
//Cr
CR = 0.155;
disp("Minimum temperature in degree C")
//Minimum temperature in degree C
Tmin = Tinfinity+((Ti-Tinfinity)*P0)*C0
