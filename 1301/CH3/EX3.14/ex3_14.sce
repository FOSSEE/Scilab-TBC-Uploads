clc;
m=1000;      //mass in kg
F=3000;     //force in Newton
a=F/m;     //calculating acc.
disp(a,"Accelaration in m/sec square = "); //displaying result
v0=30;   //initial velocity in m/sec
v=0;     //final velocity in m/sec
t=v0/a;    //uisng kinematical equation
a=-3;    //acc. inm/sec square
disp(t,"Time in sec = ");      //displaying result
s=(v0*t)+(1/2)*(a*t*t);      //kinematical equation
disp(s,"Distance in m = ");     //displaying result