//Finding of vane angle , Work done , Efficiency
//Given
D1=0.6;
D=0.3;
a=30;
b=0.05;
N=1200;
g=9.81;
Hm=75;
Vf=3;
rho=1000;
B1=1;
//To Find
u=(%pi*D*N)/60;
u1=(%pi*D1*N)/60;
Q=%pi*D1*B1*Vf;
a=atand(Vf/u);disp(u1);
Vw1=((u1*tan(%pi/6))-Vf)/tan(%pi/6);
W=(rho*g*Q*u1*Vw1)/g;
W1=W/1000;
E=((g*Hm)/(u1*Vw1))*100;
disp("Vane Angle ="+string(a)+" degrees");
disp("Work Done ="+string(W1)+" KW/sec");
disp("Manometric Efficiency ="+string(E)+" Percentage");

