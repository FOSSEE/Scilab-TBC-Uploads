//Finding of Cv,Cd,Cc
//Given
H=5;
d1=0.1;
d2=2;
t=30;
h=0.45;
x=1;
g=9.81;
y=0.052;
H=5;
//To Find
A1=(%pi/4)*d2^2;
Aq=(A1*h)/t;
A2=(%pi/4)*d1^2;
b=sqrt(2*g*H);
Tq=A2*b;
Cd=Aq/Tq;
c=sqrt(4*y*H);
Cv=x/c;
Cc=Cd/Cv;
disp(" Cd ="+string(Cd)+" No units");
disp(" Cv ="+string(Cv)+" No units");
disp(" Cc ="+string(Cc)+" No units");
