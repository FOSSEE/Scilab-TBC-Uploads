

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 4 Example # 4.1 ")

// Temperature of air in C is given as:
Tinfinity = 20;
// Temperature of surface in C is given as:
Ts = 100;
// Therefore avaerage temperature in degree C would be:
Ta = (Ts+Tinfinity)/2;
// From fig. 4.2 on page 232, it can be easily seen that (deltaT/deltaY) at
// y=0 is -66.7 K/mm
// From Table 28 in Appendix 2, at average temperature of air, thermal
// conductivity in W/m-K is
k = 0.028;

//Therefore from eq. 4.1
disp("The heat transfer coefficient is given by, as per Eq. 4.1, in W/m2K")
// 1000 is added to convert from mm to m
//heat transfer coefficient in W/m2K
hc = ((-k*(-66.7))/(Ts-Tinfinity))*1000
