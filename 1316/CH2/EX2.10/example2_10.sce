//Chapter 2
//Example 2.10
//Page 68

clear;
clc;

R1 = 1000;
R2 = 2000;
R3 = 1000;
C1 = 1;

printf("Because the bridge is at null , we have \n ")
printf("Z2*Z3 = Z1*Zx \n")
printf("R2(R3-j/wC)=R1(Rx-j/wCx) \n")
printf("The real and imaginary parts must be indpendently equal,so that \n")
printf("Rx-(R2*R3/R1)=0 \n")
//Calculation of value of Rx
x=(R2*R3/R1)/1000
printf("Rx = %.0f kilo ohm \n",x)
//Calculation of value of Cx
y=(C1*(R1/R2))
printf("Cx=C(R1/R2) \n Cx = %.1f uF",y)


