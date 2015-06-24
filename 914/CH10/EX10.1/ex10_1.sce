clc;
warning("off");
printf("\n\n example10.1 - pg405");
T=30;  //[degC] - temperature
d=8.265*10^-4;  //[m] - diameter of the capillary viscometer
deltapbyL=-0.9364;  //[psi/ft] - pressure drop per unit length
deltapbyL=deltapbyL*(2.2631*10^4);  //[kg/m^2*sec^2] - pressure drop per unit length
Q=28.36*(10^-6)*(1/60);
p=(0.88412-(0.92248*10^-3)*T)*10^3;  //[kg/m^3] - density
s=(%pi*(d^2))/4;
U=Q/s;
tauw=(d/4)*(-deltapbyL);
shearrate=(8*U)/d;
mu=tauw/(shearrate);
printf("\n\n The viscosity is \n mu=%f kg/m*sec=%f cP",mu,mu*10^3);
printf("\n\n Finally, it is important to check the reynolds number to make sure the above equation applies");
Nre=(d*U*p)/(mu);
disp(Nre,"Nre=");
printf("\n\n The flow is well within the laminar region and therefore the above equation applies");

