clc
m=0.3; //kg
cv=0.75; //kJ/kg.K
T1=313; //K
T2=433; //K
W=-30; //kJ
dU=m*cv*(T2-T1);
Q=dU + W;
disp("Heat rejected during the process=")
disp(-Q)
disp("kJ")