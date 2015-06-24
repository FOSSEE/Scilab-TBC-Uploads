clear;
clc;
close;
disp("Example 5.5")
//th=theta and b=beta.
gm=1.4 //gamma
//OBLIQUE SHOCK 1
M0=2
th=8 //degree
//from theta-beta-M chart,
b1=37 //degree
Mn1=M0*sind(b1)
p1=0.993 //p=pt2/pt1
Mn2=((2+(gm-1)*Mn1^2)/(2*gm*Mn1^2-(gm-1)))^(1/2)
M2=Mn2/sind(b1-th)
//OBLIQUE SHOCK 2
M0=M2
th=12
//from oblique shock chart,
b2=48.7
Mn1=M0*sind(b2)
p2=0.978
Mn2=((2+(gm-1)*Mn1^2)/(2*gm*Mn1^2-(gm-1)))^(1/2)
M3=Mn2/sind(b1-th)
//NORMAL SHOCK
M0=M3
b3=90
pNS=0.977

Po=p1*p2*pNS
disp(Po,"Total pressure recovery:")









