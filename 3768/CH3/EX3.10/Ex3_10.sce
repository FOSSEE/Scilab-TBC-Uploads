//Example number 3.10, Page number 49
clc;clear;
close;

//Variable declaration
r=0.1278*10**-9;    //atomic radius(m)
h1=1;
k1=1;
l1=1;
h2=3;
k2=2;
l2=1;
//Calculation
a=2*sqrt(2)*r;
d111=a*10**10/sqrt(h1**2+k1**2+l1**2);    //interplanar spacing for (111)
d321=a*10**10/sqrt(h2**2+k2**2+l2**2);    //interplanar spacing for (321)
//Result
printf("interplanar spacing for (111) is %.3f Angstrom",d111)
printf("\n interplanar spacing for (321) is %.3f Angstrom",d321)
