clc;
warning("off");
printf("\n\n example10.3 - pg414");
// given
u=1/60;  //[m/sec] - velocity
p=1000;  //[kg/m^3] - density
mu=1*10^-3;  //[kg/m*sec] - viscosity
d=6*10^-2;  //[m] - inside diameter of tube
L=300;  //[m] - length of the tube
Nre=(d*u*p)/(mu);
disp("therefore the flow is laminar",Nre,"Nre=");
f=16/Nre;
disp(f);
deltap=(4*f)*(L/d)*((p*(u^2))/2);
printf("\n\n -deltap=%f N/m^2 = %f kPa = %e psi",deltap,deltap*10^-3,deltap*1.453*10^-4);

