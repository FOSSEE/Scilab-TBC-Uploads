clc;
p1=20;//bar
v1=0.05;//m^3
v2=0.1;//m^3
p2=p1*[(v1/v2)^2];//bar

W_12=-10^5*p1*(v1^2)*((1/v1)-(1/v2));

W_23=10^5*p2*(v2-v1);

//work done from 3-1 is zero as the piston is locked in position.

disp("The net work done by the fluid is:");
W=-(W_12+W_23)
disp("N m",W)
