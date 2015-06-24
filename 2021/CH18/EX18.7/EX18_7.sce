//Finding of Discharge,Power developed,Efficiency
//Given
N=500;
H=100;
D=1;
A=35;
a=15;
b=60;
Vw1=0;
g=9.81;
rho=1000;
//To Find
u=(%pi*D*N)/60;
Vw=(tan(%pi/3)*u)/1.464;
Vf=Vw*tan(%pi/12);
Q=A*Vf;
P=(rho*g*Vw*u)/1000;
E=((Vw*u)/(g*H))*100;
disp("Discharge ="+string(Q)+" m^3/sec");
disp("Power Developed ="+string(P)+" Kilo Watts");
disp("Efficiency ="+string(E)+" Percentage");
