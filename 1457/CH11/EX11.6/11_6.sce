clc
//Initialization of variables
y1=[1.5 1.48]
V1=[2.22 2.29]
d=1.2
//calculations
q=y1.*V1
V2=q/d
Vm=[2.5 2.56]
Rh1=[0.9 0.89]
Rh2=[0.88 0.78]
Rhm=(Rh1+Rh2)/2
S=(q.*Vm/ Rhm.^(2/3)).^2
dx=[358 226]
yavg=(y1(1) + y1(2))/2
qavg=(q(1) + q(2))/2
B=4.5
Q=qavg*B
//results
printf("Flow rate = %.1f m^3/s",Q)
