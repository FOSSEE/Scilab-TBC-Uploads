clc
h=1800; //m
T=277; //K
t=4; //s
y=1.4;
R=287; //J/kg K

C=sqrt(y*R*T);

//tan(a)=h/t*V
//V=C/sin(a)
//From above two equations we get

a=(acos(C/h*t));

V=C/sin(a)*3600/1000;
disp("Speed of the aircraft =")
disp(V)
disp("km/h")