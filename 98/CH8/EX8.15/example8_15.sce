//Chapter 8
//Example 8_15
//Page 185

clear;clc;

v=220;
r=1.5;
d=200;
t=40;
b=76;
mo=0.85;
f=50;

delta=3.92*b/(273+t);
go=30/sqrt(2);

vc=mo*go*delta*r*log(d/r);
v_phase=v/sqrt(3);

pc=242.2/delta*(f+25)*sqrt(r/d)*(v_phase-vc)^2*1e-5;

printf("Delta = %.3f \n\n", delta);
printf("Disruptive critical voltage per phase = %.2f kV \n\n", vc);
printf("Supply voltage per phase = %.2f kV \n\n", v_phase);
printf("Corona loss = %.5f kW/km/phase \n\n", pc);
printf("Total corona loss = %.5f kW \n\n", pc*3);
