clc;
eta=0.682;
Q=260;//kJ/kg
W=-eta*Q;
R=287;
T1=293;
p1=1.01
v1_v2=(17/18)*(R*T1)/(p1*10^5);
pm=-W*10^3/(v1_v2*10^5);
disp("mean effective pressure is:");
disp("bar",pm)
