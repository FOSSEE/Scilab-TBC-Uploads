//16.13
clc;
W1=10;
W2=-1.2;
P_absorbed=W1+W2;
printf("\nPower=%.2f kW",P_absorbed)
phi=atand((3^0.5)*(W1-W2)/(W1+W2));
pf=cosd(phi);
printf("\nPower Factor=%.2f ",pf)