

//example 14.34
//calculate concentration at point 10 cm above the bed
clc;funcprot(0);
//given
D=2.8;         //depth of flow
c_=700;        //concentration at 30 cm below water surface
y=0.1;
a=D-0.3;
e=0.4;         //exponent in rouse equation;

c=c_*(a*(D-y)/(y*(D-a)))^e;
mprintf("concentration at point 10 cm above the bed=%i ppm.",c);
