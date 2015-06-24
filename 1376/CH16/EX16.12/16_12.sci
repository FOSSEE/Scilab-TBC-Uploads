//16.12
clc;
//P_input=W1+W2=15000........(i)
pf=0.4
phi=acosd(0.4);
a=tand(phi);
//tand(phi)=(3^0.5)*(W1-W2)/(W1+W2)
//on solving  W1-W2=3464.2 ..............(ii)
//From (i) and (ii) we can calculate
W1=9.232;
W2=5.768;
printf("\nW1=%.2f kW",W1)
printf("\nW2=%.2fkW ",W2)