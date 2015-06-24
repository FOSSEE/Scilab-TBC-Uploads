//Chapter 10
//Example 10_7
//Page 237

clear;clc;

vr=11*1000/sqrt(3);
r=1.5;
xl=4;
pfr=0.8;
pd=5000;

i=pd*1000/3/vr;
vs=vr+i*r*pfr+i*xl*sin(acos(pfr));
reg=(vs-vr)/vr*100;
loss=3*i^2*r;
op=pd*pfr;
ip=op+loss/1000;
n=op/ip*100;

printf("Recieving end voltage = %.0f V \n\n", vr);
printf("Load current = %.2f A \n\n", i);
printf("Sending ebd voltage = %.2f V \n\n", vs);
printf("%% Regulation = %.2f %% \n\n", reg);
printf("Lone losses = %.0f kW \n\n", loss/1000);
printf("Output power = %.0f kW \n\n", op);
printf("Input power = %.0f kW \n\n", ip);
printf("Transmission efficiency = %.2f %% \n\n", n);

