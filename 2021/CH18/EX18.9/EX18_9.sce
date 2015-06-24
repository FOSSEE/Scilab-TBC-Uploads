//Finding of Work Done ,Vane Angles
//Given
D=0.5;
D1=1;
Vw1=0;
Vf=3;
Vf1=3;
g=9.81;
rho=1000;
N=250;
//To Find
u=(%pi*D*N)/60;
u1=(%pi*D1*N)/60;
Vw=Vf/tan(%pi/12);
a=atand(Vf/(Vw-u));
b=atand(Vf1/u1);
W=(Vw*u)/g;
E=(W/10);
disp("Inlet Vane Angle ="+string(a)+" degrees");
disp("Outlet Vane Angle ="+string(b)+" degrees");
disp("Work Done ="+string(W)+" N-m/N");
disp("Efficiency ="+string(E)+" Percentage");
