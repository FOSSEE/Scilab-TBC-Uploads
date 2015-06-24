//Chapter 18
//Example 18_20
//Page 453

clear;clc;

mva=50;
kv=11;

//three phase fault
I1=2000;
//line to line fault
I2=2600;
//line to ground fault
I3=4200;

Eph=kv*1000/sqrt(3);

X1=Eph/I1;
X2=sqrt(3)*Eph/I2-X1;
X3=3*Eph/I3-X1-X2;

printf("X1 = %.3f ohm \n\n", X1);
printf("X2 = %.3f ohm \n\n", X2);
printf("X3 = %.3f ohm \n\n", X3);

