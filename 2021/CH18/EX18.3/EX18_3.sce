//Finding of Power ,Efficiency
//Given
D=0.8;
N=1000;
a=15;
Q=0.15;
Cv=0.98;
rho=1000'
g=9.81;
H=400;
//To Find
u=(%pi*D*N)/60;
V=Cv*sqrt(2*g*H);
P=(rho*g*Q*H)/1000;
E=2*(V-u)*(1+cos(%pi/12))*u
E1=(E/V^2)*100;
disp("Power available ="+string(P)+" Kilo watts");
disp("Hydraulic efficiency ="+string(E1)+" percentage");
