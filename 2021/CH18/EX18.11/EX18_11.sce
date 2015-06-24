//Finding of Angle ,Diameter ,Width
//Given
E=0.75;
P=147.15;
H=8;
N=200;
Vw1=0;
Cv=0.3;
g=9.81;
rho=1000;
//To Find
u=Cv*sqrt(2*g*H);
Vf=0.96*sqrt(2*g*H);
E1=0.8;
Vw=(E1*g*H)/u;
a=atand(Vf/Vw);
b=atand(Vf/(Vw-u));
D=(60*u)/(%pi*N);
Q=(E1*P*1000)/(E*rho*Vw*u);
B=Q/(%pi*D*Vf);
disp("Diameter ="+string(D)+" meter");
disp(" Inlet angle ="+string(a)+" degrees");
disp(" Outlet angle ="+string(b)+" degrees");
disp("Width ="+string(B)+" meter");
