//Chapter 10
//Example 10_8
//Page 238

clear;clc;

f=50;
ll=16;
pd=1000;
v_r=11;
pfr=0.8;
r=0.03;
l=0.7;

r_ohm=r*ll;
xl=l*2*%pi*f*ll/1000;
vr=v_r*1000/sqrt(3);
i=pd*1000/3/vr/pfr;
vs=vr+i*r_ohm*pfr+i*xl*sin(acos(pfr));
reg=(vs-vr)/vr*100;
loss=3*i^2*r_ohm;
op=pd;
ip=op+loss/1000;
n=op/ip*100;

printf("Resistance of each conductor = %.2f ohm \n\n", r_ohm);
printf("Reactance of each conductor = %.2f ohm \n\n", xl);
printf("Recieving end voltage = %.0f V \n\n", vr);
printf("Load current = %.2f A \n\n", i);
printf("Sending end voltage = %.2f V \n\n", vs);
printf("%% Regulation = %.2f %% \n\n", reg);
printf("Line losses = %.3f kW \n\n", loss/1000);
printf("Output power = %.0f kW \n\n", op);
printf("Input power = %.1f kW \n\n", ip);
printf("Transmission efficiency = %.2f %% \n\n", n);

