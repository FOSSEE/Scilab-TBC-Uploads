//Chapter 21, Problem 9
clc;
v1=4000;                        //primary voltage
v2=200;                         //secondary voltage
f=50;                           //frequency
n2=100;                         //secondary turns
R=100e3;                        //resistance in ohm
E=v2;
i1=R/v1;                        //primary current
i2=R/v2;                        //secondary current
n1=(v1/v2)*n2;                  //primary turns
phim=E/(4.44*f*n2);             //flux max
printf("(a) Primary current = %f A\n\nSecondary currenr = %f A\n\n\n",i1,i2);
printf("(b) Primary turns = %f\n\n\n",n1);
printf("(c) maximum value of the flux = %f mWb",phim*1000);
