
//To Calculate the Work Done by a person in pulling them apart to infinite separations

//Example 29.3

clear;

clc;

Q1=10*10^-6;//First Charge in Coloumbs

Q2=10*10^-6;//Second Charge in Coloumbs

Q3=10*10^-6;//Third Charge in Coloumbs

K=9*10^9;//Value of constant (1/(4*pi*ε0))

x=0.1;//Length of side of the Equilateral Triangle in metres

U=3*Q1*Q2*K/x;//Potential Energy of the System

printf("The amount of work done to pull the charges apart=%f J",U);
