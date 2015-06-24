//Page Number: 653
//Example 12.8
clc;
//Given
d=2.4;//cm
lmbc=1.8;
c=3*10^10; //cm/s

lmbg=2*d;
lmb=(lmbg*lmbc)/(sqrt(lmbg^2+lmbc^2));
//Operating frequency
f=c/lmb;
disp('GHz',f/10^9,'Operating frequency:');
