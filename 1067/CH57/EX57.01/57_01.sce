clear;
clc;
v=100;
z=3+(4*%i);
i=v/z;
y=1/z;
ia=atand(imag(i)/real(i));
printf("the branch current I=%f/_%dA\nthe Branch Admittance=%f+(%f)j mho",abs(i),ia,real(y),imag(y));
