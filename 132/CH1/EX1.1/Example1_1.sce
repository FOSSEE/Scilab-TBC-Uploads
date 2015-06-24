//Example 1.1
//Program to find Range of a Resistor so as to satisfy manufacturer's Tolerances
//Colour Band Sequence: YELLOW, VIOLET, ORANGE, GOLD 
clear;
clc ;
close ;
A=4;//NUMERICAL CODE FOR BAND YELLOW
B=7;//NUMERICAL CODE FOR BAND VIOLET
C=3;//NUMERICAL CODE FOR BAND ORANGE
D=5;//TOLERANCE VALUE FOR BAND GOLD i.e. 5%
//Resistor Value Calculation
R=(A*10+B)*10^C;
//Tolerance Value Calulation
T=D*R/100;
R1=R-T;
R2=R+T;
//Displaying The Results in Command Window
printf("\n\n\t Resistor Value is %f kOhms +- %f percent.",R/1000,D);
printf("\n\n\t Resistor Value is %f kOhms +- %f kOhms.",R/1000,T/1000);
printf("\n\n\t Range of Values of the Resistor is %f kOhms & %f kOhms.",R1/1000,R2/1000);