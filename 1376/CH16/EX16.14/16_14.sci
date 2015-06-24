//16.14
clc;
P_input=10*735.5/0.82;
//P_input=W1+W2=8974........(i)
pf=0.4
phi=acosd(0.83);
a=tand(phi);
//tand(phi)=(3^0.5)*(W1-W2)/(W1+W2)
//on solving  W1-W2=3482 ..............(ii)
//From (i) and (ii) we can calculate
W1=6.228;
W2=2.746;
printf("\nW1=%.2f kW",W1)
printf("\nW2=%.2fkW ",W2)
