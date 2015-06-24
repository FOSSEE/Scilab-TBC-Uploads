//Calculate current and power input
//Chapter 3
//Example 3.13
//page 216
clear;
clc; 
disp("Example 3.13")
R1=0.21;                    //primary resistance in ohms
X1=1;                        //primary reactance in ohms
R2=2.72*10^(-4);            //secondary resistance in ohms
X2=1.3*10^(-3);              //secondary reactanced in ohms
V1=6600;                      //primary voltage in volts
V2=250;                        //secondary voltage in volts
r=V1/V2;                         //turns ratio
Re=R1+(r^2*R2);
printf("Equivalent resistance referred to primary side=%fohms",Re);
Xe=X1+(r^2*X2);
printf("\nEquivalent reactance referred to primary side=%fohms",Xe);
Ze=sqrt(Re^2+Xe^2);
printf("\nequivalent impedance reffered to primary,Ze=%fohms",Ze);
V=400;                        //voltage in volts
I1=V/Ze;
printf("\nI1=%f",I1);
printf("\nPower input=%fW",(I1^2*Re));

