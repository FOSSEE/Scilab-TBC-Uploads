//Finding of Vane Angle
//Given
N=1450;
Hm=23;
D1=0.25;
B1=0.05;
Emano=0.75;
g=9.81;
Q=1.25;
//To Find
u=(%pi*D1*N)/60;
Vw1=(Emano*u)/(g*Hm);
z=u-Vw1;
Vf1=z*tan(%pi/6);
Vf1=Q/(%pi*D1*B1);
a=Vf1/(u-Vw1);
b=atand(a);
disp("Vane Angle ="+string(b)+" degrees");
