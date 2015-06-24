clc
Im1=20;           //Assigning values to parameters
Im2=40;
Im=25;
function i1=f(wt), i1=Im1*sin(wt), endfunction
function i2=f(wt), i2=Im2*sin(wt+%pi/6), endfunction
function i=f(wt), i=Im*sin(wt+%pi/6), endfunction
Z=6+%i*8;
I1=Im1/sqrt(2);
I2=24.49+%i*14.14;
I=15.31+%i*8.84;
I3=I-(I1+I2);
V=I*Z;
[r,t]=polar(Z);
P=V*I*cos(t);
Z1=V/I1;
disp("Amperes",I3,polar(I3),"Current I3");
disp("Volts",V,polar(V),"Supply Voltage");
disp("Watts",P,polar(P),"Active Power");
disp("Ohms",Z1,polar(Z1),"Impedance Z1");