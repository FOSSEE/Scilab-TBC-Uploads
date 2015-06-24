//Ex3_1

clc;

//Given in cgs units
m1=232;
m2=1;
m3=4;
z1=90;
z2=1;
z3=2;
e=4.8*10^-10;// in ergs
c=1.4;// nuclear radius constant

//Formula: E=(z1*z2*e^2)/(r1+r2)
r1=(m1)^(1/3);
r2=(m2)^(1/3);
r3=(m3)^(1/3);
E1=(z1*z2*e*e)/(c*(r1+r2)*10^-13*(1.6*10^-6));
printf("\n The coulomb barrier for the penetration of Th by proton is = %f MeV",E1)
E2=(z1*z3*e*e)/(c*(r1+r3)*10^-13*(1.6*10^-6));
printf("\n \n The coulomb barrier for the penetration of Th by alpha particle is = %f MeV",E2)
