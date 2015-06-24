clc
R=287; //kJ/kg.K
dU=0;
W=0;
Q=dU+W;

dS=R*log(2); //v2/v1=2

disp("Change in entropy = ")
disp(dS)
disp("kJ/kg.K")