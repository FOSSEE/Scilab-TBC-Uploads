//Finding of Power Required
//Given
Q=0.03;
H=18.25;
L=90;
dp=0.1;
E=0.75;
f=0.04;
g=9.81;
rho=1000;
//Given
V=Q/((%pi/4)*dp^2);
loss=(f*L*V^2)/(2*g*dp);
a=V^2/(2*g);
Hm=H+loss+a;
SP=(rho*g*Q*Hm)/(E*1000);
disp("Power required ="+string(SP)+" Kilowatts");

