//Example_a_3_17 page no:146
clc;
V=100;
R1=10;
R2=20;
R3=30;
R4=40;
Va=V*(R3/(R3+R1));
Vb=V*(R4/(R4+R2));
Vab=Va-Vb;
Rab=(((30*10)/(30+10))+((20*40)/(20+40)));
Rl=Rab;
Il=Vab/(Rl+Rl);
P=Il^2*Rl;//power calculation
disp(Rl,"the load resistance is (in ohm)");
disp(P,"the maximum power delivered to load is (in W)");
