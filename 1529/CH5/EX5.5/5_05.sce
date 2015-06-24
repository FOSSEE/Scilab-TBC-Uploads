//Chapter 5, Problem 5, Figure 5.8
clc;
V=24;
I=3;
R1=2;
T=50;
R=V/I;                                                      //Calculating total resistance
R2=R-R1;                                                         //Calculating the value of unknown resistance
printf("Value of unknown resistance = %f ohm\n\n\n",R2);
V1=I*R1;                                                         //Calculating the voltage across 2 ohm resistor
printf("Potential difference across 2 ohm resistor = %f V\n\n\n",V1);
E=(V*I)*T;
printf("Energy used = %f Wh",E);
