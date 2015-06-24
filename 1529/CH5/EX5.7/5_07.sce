//Chapter 5, Problem 7, Figure 5.14
clc;
R1=3;
R2=6;
V=12;
//The total circuit resistance R is given by,
R=(R2*R1)/(R1+R2);
printf("Total circuit resistance = %f ohm\n\n\n",R);
//Current in the 3 ohm resistor is given by,
I1=V/R1;
printf("Current in the 3 ohm resistor = %f A\n\n\n",I1);
