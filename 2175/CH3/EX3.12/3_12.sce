clc;
p=15;//bar
V=6;//m^3;
R=0.287;
T=313.5;
y=1.4

m=p*V/(R*T);

p2=12;//bar
T2=T/[(p/p2)^((y-1)/y)];
m2=p2*V*10^5/(R*T2*10^3);

disp("mass of air left");
disp("kg",m2)
