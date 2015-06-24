//Finding of Discharge
//Given
N=1000;
Hm=15;
D1=0.3;
B1=0.05;
a=30;
Emano=0.92;
g=9.81;
//To Find
u=(%pi*D1*N)/60;
Vw1=(Emano*u)/(g*Hm);
z=u-Vw1;
Vf1=z*tan(%pi/6);
Q=%pi*D1*B1*Vf1;
disp("Discharge ="+string(Q)+" m^3/sec");
