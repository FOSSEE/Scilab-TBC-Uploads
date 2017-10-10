//Chapter 26
//Example 26_3
//Page 600

clear;clc;

f=50;
c=1.2*1e-6;
c1=c;
c2=0.9*c;
c3=0.8*c;

xl1=1/(3*2*%pi*f*c1);
xl2=1/(3*2*%pi*f*c2);
xl3=1/(3*2*%pi*f*c3);

printf("Inductive reactance of coil to nuetralize capacitance of 100%% of the length of the line is %.2f ohm \n\n", xl1);
printf("Inductive reactance of coil to nuetralize capacitance of 90%% of the length of the line is %.2f ohm \n\n", xl2);
printf("Inductive reactance of coil to nuetralize capacitance of 80%% of the length of the line is %.2f ohm \n\n", xl3);