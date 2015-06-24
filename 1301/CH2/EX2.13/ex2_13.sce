clc;
v=15;     //velocity in m/sec
v0=30;    //velocity in m/sec
a=-2;     //acc. in m/sec square
s=((v*v)-(v0*v0))/(2*a);     //kinematical equation
disp(s,"Distance in metre = ");      //displaying result
v=0;
s=(v*v)-(v0*v0)/(2*a);
disp(s,"Distance in metre = ");      //displaying result