clc;
g=32;        //gravitational constant in ft/sec square
w=2400;         //weight in lb
m=w/g;    //calculating mass
disp(m,"Mass in slugs = "); //displaying result
F=750;         //force in lb
m=75;          //mass in slugs
a=F/m;         //calculating acc
disp(a,"Accelaration in ft/sec square = ");     //displaying result
v0=60;     //initial velocity in ft/sec
v=20;      //final velocity in ft/sec
a=-10;    //acc. in ft/sec square
t=(v-v0)/a;      //kinematical equation
s=(v0*t)+((1/2)*a*t*t);         //calculating distance in ft
disp(s,"Distance in ft = ");   //displaying result