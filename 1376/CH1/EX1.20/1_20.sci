//1.20
clc;
R0=5;
a=0.004;
T=30;
R=R0*(1+a*(T-20));
printf("Resistance of the wire=%.1f ohm",R)
//Let (dR/dR0) =b ; (dR/da)=c ; (dR/dT)=d
b=(1+a*(T-20));
c=R0*(T-20);
d=R0*a;
ur0=5*0.003;
ua=0.004*0.01;
ut=1;
uR=(b^2*ur0^2+c^2*ua^2+d^2*ut^2)^0.5;
printf("Uncertanity in resistance=%.2f ohm",uR)
