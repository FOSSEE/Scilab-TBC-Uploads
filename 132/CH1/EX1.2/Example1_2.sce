//Example 1.2
//Program to find Range of a Resistor so as to satisfy manufacturer's Tolerances
//Colour Band Sequence: GRAY, BLUE, GOLD, GOLD
clear;
clc ;
close ;
A=8;//NUMERICAL CODE FOR BAND GRAY
B=6;//NUMERICAL CODE FOR BAND BLUE
C=-1;//NUMERICAL CODE FOR BAND GOLD
D=5;//TOLERANCE VALUE FOR BAND GOLD i.e. 5%
//Resistor Value Calculation
R=(A*10+B)*10^C;
//Tolerance Value Calulation
T=D*R/100;
R1=R-T;
R2=R+T;
//Displaying The Results in Command Window
printf("\n\n\t Resistor Value is %f Ohms +- %f percent.",R,D);
printf("\n\n\t Resistor Value is %f Ohms +- %f Ohms.",R,T);
printf("\n\n\t Range of Values of the Resistor is %f Ohms & %f Ohms.",R1,R2);