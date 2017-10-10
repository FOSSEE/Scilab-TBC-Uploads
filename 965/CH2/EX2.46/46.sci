clc;
clear all;
disp("heat flow per length")
r1=110;//mm outer radius of pipe
r2=r1+50;//mm outer radius of insulation
//k=0.06(1+0.0018*t);// W/(m*C)
ti=280;// degree C
to=50;// degree C

km=0.06*(1+(0.0018/2)*(ti+to));
km
Q=2*3.1416*km*(ti-to)/(log (r2/r1));
disp("W/m",Q,"heat transfer per unit length = ")

// to calcuate the temperature at the mid thickness
//Q=2*3.1416*k*(ti-tmt)/((ln (rmt/r1));
rmt=(r1+r2)/2;
//k=0.06(1+0.0018*(t1+tmt)/2)
//Q=2*3.1416*0.06(1+0.0018*(t1+tmt)/2)*(ti-tmt)/((ln (rmt/r1))
//0.0009*tmt^2+tmt-187.56
tmt=(-1+(1+4*0.0009*187.56)^0.5)/(2*0.0009);
disp("degree C",tmt,"The temperature at the mid thickness =")


