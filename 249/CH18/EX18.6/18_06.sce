clear
clc
XA=0.35;
FAo=2000;//mol/hr
CAo=0.1//mol/litre
eA=3;k=96;
CA=CAo*((1-XA)/(1+eA*XA))
rA=k*CA;
//For mixed flow
W=FAo*XA/rA;
printf("The amount of catalyst needed(kg) is %f",W)