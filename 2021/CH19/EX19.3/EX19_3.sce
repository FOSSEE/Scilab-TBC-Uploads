//Finding of Workdone
//Given
D1=0.3;
D=0.15;
a=30;
b=25;
N=1450;
g=9.81;
//To Find
u=(%pi*D1*N)/60;
u1=(%pi*D*N)/60;
Vf=u*tan(%pi/6);
Vw1=(-u1*tan(%pi/7)+Vf)/tan(%pi/7);
W=(Vw1*u1)/g;
disp("Work Done ="+string(W)+" Nm/N");
