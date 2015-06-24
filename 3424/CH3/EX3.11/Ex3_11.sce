clc
//Initialization of variables
D = 850  //kg/m^3
R = (0.06/0.10)^2 
Qs = 0.005 // m^3/s
Ql = 0.05 // m^3/s
A2 = (%pi)*(0.06^2)/4 // m^2
// Calculations
Ds = (Qs^2)*(D)*(1 - R^2)/(2*(A2)^2) // N/m^2
Dl = (Ql^2)*(D)*(1 - R^2)/(2*(A2)^2) // N/m^2
// results 
printf (" the pressure differnce range is %.2f kPa",Ds/10^3)
printf (" <= p1 - p2 <= %.f kPa",Dl/10^3)
