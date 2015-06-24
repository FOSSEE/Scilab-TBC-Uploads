//Page Number: 43
//Example 1.18
clc;
//Given
er=2.2;
n0=377;//ohm
n2=n0/sqrt(er);//ohm
n1=377;//ohm

//Reflection coefficient
t=(n2-n1)/(n2+n1);
disp(t,'Reflection coefficient:');

//Vswr
//Taking mod of reflection coefficient
t1=-t;
p=(1+t1)/(1-t1);
disp(p,'VSWR:');
