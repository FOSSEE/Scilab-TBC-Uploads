//EX10_3 PG-10.17
clc
Iios=20;//Input offset current in nA
Ib=60;//Input bias current in nA
//Iios=Ib1-Ib2=20
//Ib=(Ib1+Ib2)/2=60
//ie Ib=(Ib1+Ib2)=120
disp(" Iios=Ib1-Ib2=20")
disp(" ie Ib=(Ib1+Ib2)/2=60 ie Ib=(Ib1+Ib2)=120")
a=[1 -1;1 1];//coefficient of Ib1 and Ib2 for Iios and Ib
b=[20 ;120];//value of Iios and Ib
x=inv(a)*b
disp(" values of Ib1 andIb2 are")
printf("  %.0f nA ",x)
