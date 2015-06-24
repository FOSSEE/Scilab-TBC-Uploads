clc;
g=32;        //gravitational constant in ft/sec square
w=3200;         //weight in lb
m=w/g;    //calculating mass
disp(m,"Mass in slugs = "); //displaying result
v=44;         //velocity in ft/sec
t=8;          //time in sec
a=v/t;         //calculating acc
disp(a,"Accelaration in ft/sec square = ");     //displaying result
F=m*a;         //calculating force in lb
disp(F,"Force in lb = ");   //displaying result