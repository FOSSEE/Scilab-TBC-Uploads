
//Ex9_2
clc;
// Given:
m1=24*10^-6;// g per day
m2=10^-2;// g per day
i1=10^-6;// in A

//Formula: i1*m2=m1*i2

//Solution:

i2=(i1*m2)/m1;
i=i2/10^-3;// in mA

printf("The ion current should be = %f mA",i)
