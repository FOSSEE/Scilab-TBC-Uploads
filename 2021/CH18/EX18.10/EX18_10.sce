//Finding of Vane Angle ,Head ,Velocity ,Efficiency
//Given
u=12;
D=0.8;
D1=1;
Vw1=0;
Hout=1;
Vw=12;
Vf=3;
g=9.81;
//To Find
a=atand(Vf/Vw);
V=sqrt(Vw^2+Vf^2);
u1=(D1/D)*u;
V1=u1*tan(%pi/9);
H=((V1^2/(2*g))+1)+((Vw*u)/g);
E=((Vw*u)/(g*H))*100;
disp("Absolute Velocity ="+string(V)+" m/sec");
disp("Vane Angle ="+string(a)+" degrees");
disp("Efficiency ="+string(E)+" Percentage");
