clc;
clear;

printf("\n Example 6.3\n");
d=150e-3;//Diameter of pipe
printf("\n Given:\n Diameter of pipe = %d mm",d*1e3);
d_t=50e-3;//Throat diameter
printf("\n Throat diameter = %d mm",d_t*1e3);
hv=121e-3;//Pressure drop over the converging section
printf("\n Pressure drop over the converging section = %d mm of water",hv*1e3);
G=2.91; //Mass Flow rate of water
printf("\n Mass Flow rate of water = %.2f kg/s",G);
//From equation 6.32, the mass rate of flow
A1=%pi*d^2/4;
A2=%pi*d_t^2/4;
Cd=G*(A1^2-A2^2)^0.5/(1000*A1*A2*(2*9.81*hv)^0.5);
printf("\n\n Calculations:\n Coefficient for the converging cone of the meter at given flowrate = %.3f",Cd);