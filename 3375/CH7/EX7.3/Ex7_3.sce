//Example 7.3
//Friction Factor
//Page No. 430
clc;clear;close;

D=60;     // in mm
Ep=1.2;       //in mm
Re=10^8;
Factor=Ep/(D/2);

f=1/(1.74-2*log10(Factor))^2;
Er=1/sqrt(f)-(1.74-2*log10(Factor+18.7/(Re*sqrt(f))));
printf('f = %f \nEr = %f',f,Er);
f1=[0.0485,0.049,0.0475];
for i=1:3
    Er=1/sqrt(f1(i))-(1.74-2*log10(Factor+18.7/(Re*sqrt(f1(i)))));
    printf('\n\nf = %f \nEr = %f',f1(i),Er);
end
printf('\n\nSince minimum error value is shown by f=0.048605, that is taken to be final answer\nNote: Computational error in book')
