//page 550
//problem 12.5
// Sm(w)=k*e^(-w2/26^2) this is given
// let us the assume the value of constant 6^2/4(pi^2) =3
// thus the variance can be calculated as
clc;
f0=0;f1=15;
y=integrate('(f^2)*(%e^(-(f^2)/6))','f',f0,f1);
g=integrate('%e^(-(f^2)/6)','f',f0,f1);
v=y/g;
disp(v,'Bm2');