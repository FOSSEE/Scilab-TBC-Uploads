//EXAMPLE 6.15
//solving for coefficients;
clear;
clc;
z = %z;
num=z*(z+2);
den=(z-0.2)*(z+0.6);
H=num/den;
disp('the factors are :');
elts=factors(den);
disp(elts);
//coeff are:
disp('The coefficients are p1,p2:');
p1 = horner((z+2)/(z+0.6),0.2);
disp(p1,'p1 = ') ;
p2 = horner((z+2)/(z-0.2),-0.6);
disp(p2,'p2 = ') ;