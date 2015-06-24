//Finding of workdone
//Given
D1=.6;
D=0.3;
a=20;
b=30;
N=1000;
g=9.81;
Vw=0;
rho=1000;
//To Find
u=(%pi*D*N)/60;
u1=(%pi*D1*N)/60;
Vf=u*tan(%pi/9);
Vw1=(u1*tan(%pi/6)-Vf)/tan(%pi/6);
W=(Vw1*u1)/g;
disp("Work Done ="+string(W)+" N-m/N");
