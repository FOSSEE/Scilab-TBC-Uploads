//Chapter 5, Problem 3, Figure 5.4
clc;
R1=4;
R2=9;
R3=11;
V=12;
R=R1+R2+R3;                      //Calculating total resistance R
I=V/R;
printf("Current flowing through circuit = %f A\n\n\n",I);
V1=I*R2;
printf("Potential difference across R2 = %f V\n\n\n",V1);
P=(I^2)*R3;                                      //Calculating power dissipated in the 11 ohm resistor
printf("Power dissipated in R3 = %f W\n\n\n",P);
