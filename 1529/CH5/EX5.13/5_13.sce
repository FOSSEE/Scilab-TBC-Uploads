//Chapter 5, Problem 13, Figure 5.26
clc;
R1=15;                      //in ohms
R2=10;                      //in ohms
R3=38;                      //in ohms
V=250;                      //in volts
Pt=2500;                    //in watts
I=Pt/V;                     //current in amperes
Rt=V/I;
r=(R1*R2)/(R1+R2);          //equivalent resistance of R1 and R2
V1=I*r;
V2=V-V1;
i=V2/R3;
rx=V2/i;
I1=(R2/(R1+R2))*I;
I2=(R1/(R1+R2))*I;
printf("\n(a) Value of resistor Rx = %d ohm\n\n",rx)
printf("\n(b) Current flowing in each of the four resistors \n I1 = %d A\n I2 = %d A\n I3 = I4 = %d A",I1,I2,i);
