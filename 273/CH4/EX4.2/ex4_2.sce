clc;clear;
//Example 4.2
//electrostatic deflection
//given values
V1=2000;//in volts,potential difference through which electron beam is accelerated
l=.04;//length of rectangular plates
d=.015;//distance between plates
V=50;//potential difference between plates
//calculations
alpha=atan(l*V/(2*d*V1))*(180/%pi);//in degrees
disp(alpha,'angle of deflection of electron beam is:');
v=5.93*10^5*sqrt(V1);//horizontal velocity in m/s
t=l/v;//in s
disp(t,'transit time through electric field is:')