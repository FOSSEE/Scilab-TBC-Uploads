clc;
F=150;        //force in lb
g=32;        //gravitational constant in ft/sec square
w=96;         //weight in lb
m=w/g;    //calculating mass
disp(m,"Mass in slugs = "); //displaying result
a=F/m;         //calculating acc
disp(a,"Accelaration in ft/sec square = ");     //displaying result