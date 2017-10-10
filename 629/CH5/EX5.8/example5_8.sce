clear
clc
//Example 5.8 VELOCITY IN A VARIABLE-AREA PIPE
A1=120^2; //[cm^2]
A2=60^2; //[cm^2]
V1=2; //speed in 120cm pipe[m/s]
//flow rates Q1=Q2
V2=V1*(A1/A2) //speed in 60 cm pipe[m/s]
printf("\nThe water speed in the 60cm pipe = %.f m/s.\n",V2)