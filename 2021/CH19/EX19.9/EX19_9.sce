//Finding of Manometric head
//Given
D1=0.4;
B1=0.025;
Q=0.06;
N=1000;
a=30;
g=9.81;
Emano=0.8;
//To Find
u=(%pi*D1*N)/60;
Vf=Q/(%pi*D1*B1);
Vw1=(-Vf*tan(%pi/6)+u);
H=(Vw1*u)/g;
Hm=(Emano*u*Vw1)/g;
Hm1=2*Hm;
disp("Head Developed ="+string(Hm1)+" meter");
