//Finding of  Weight and Metacentric height
//Given
l=4;
b=2;
h=1;
d=0.6;
v=l*b*d;
rho=1000;
g=9.81;
//To Find
wd=rho*g*v;
disp("Weight of the body ="+string(wd)+" Newtons");
I=(l*b^3)/12;
h1=h/2;
d1=d/2;
h2=h1-d1;
mh=(I/v)-h2;
disp("Metacentric Height ="+string(mh)+" meter");
