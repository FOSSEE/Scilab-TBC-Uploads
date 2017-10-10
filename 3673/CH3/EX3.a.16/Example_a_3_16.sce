//Example_a_3_16 page no:145
clc;
V1=50;
R1=10;
R2=2;
R3=5;
R4=3;
Rt=(((3+2)*5)/((3+2)+5))+10;
It=50/Rt;
I3=It*(R3/(R3+R3));
Vab=R4*I3;//in V
Rth=((((10*5)/(10+5))+2)*3)/((((10*5)/(10+5))+2)+3);
Rl=Rth;//here Rl is equal to Rth
Il=Vab/(Rl+Rl);
P=Il^2*Rl;
disp(P,"the maximum power delivered to the load is (in W)");
