clc;
F=50-30;     //force in lb
g = 9.81;
w1=50;     //weight in lb
w2=30;      //weight in lb
m=(w1+w2)/g;   //calculating mass
disp(m,"Mass in slugs = "); //displaying result
a=F/m;      //Newton's Law
disp(a,"Accelaration in ft/sec square = ");   //displaying result