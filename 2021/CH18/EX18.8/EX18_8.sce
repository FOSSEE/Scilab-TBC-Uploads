//Finding of Power developed,Outlet Vane Angle ,Speed
//Given
H=100;
D=.675;
D1=0.5
B=0.15;
B1=.225;
g=9.81;
rho=1000;
Vf=3;
Vw=3;
//To Find
u=Vf/tan(%pi/15);
N=1/((%pi*D)/(u*60));
u1=u*(D1/D);disp(Vf);
Vf1=(D*B*Vf)/(0.15*B1);
z=atand(Vf1/u1);
P=(rho*%pi*B*D1*Vf*Vw*u)/10000;
disp("Speed ="+string(N)+" rpm");
disp("Power Developed ="+string(P)+" Kilo Watts");
disp("Outlet Vane Angle ="+string(z)+" degrees");
