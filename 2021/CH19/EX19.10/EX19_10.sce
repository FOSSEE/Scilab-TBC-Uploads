//Finding of Head , Shaft Power
//Given
n=3;
D1=0.4;
B1=0.025;
a=30;
A=0.15;
A1=0.0267;
Emano=0.85;
E=0.75;
Q=0.06;
N=1200;
g=9.81;
rho=1000;
//To Find
V=Q/A1;disp(V);
u=(%pi*D1*N)/60;
Vw1=(u*tan(%pi/6)-V)/tan(%pi/6);
Hm=(Emano*u*Vw1)/g;
Hm1=3*Hm;
SP=(rho*g*Q*Hm1)/(1000*E);
disp("Head ="+string(Hm1)+" meter");
disp("Shaft Power ="+string(SP)+" Kilo watts");
