//EXAMPLE 6.16
//Partial fraction expansion

clc;
clear;
z=%z;
num = z^3;
den = 18*z^3 + 3*z^2 - 4*z - 1;
elts=factors(den);
disp(elts,'the factors are :') ;
func = num/den;
//the partial fraction gives:
p1 = horner((1/(1+0.3333333/z)^2),0.5);
disp(p1,'p1 = ');
p2 = horner(1/((1-0.5/z)),-0.3333333);
disp(p2,'p2 = ');
p3 = horner(0.6/((1-0.5/z)),-0.3333333);
disp(p3,'p3 = ');
disp('partial fraction gives : ');
disp(p1*z/elts(1),'h1 = ');
disp(p3*z/elts(3),'h2 = ');
disp(p2*z^2/(elts(2)*elts(2)),'h3 = ');