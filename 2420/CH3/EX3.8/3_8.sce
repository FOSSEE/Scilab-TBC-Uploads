clc
clear
//Initialization of variables
C=1/4000
F=125 //lb
n=3500 //rpm
//calculations
Bhp=F*n*C
//results
printf("Bhp developed by the engine = %.1f",Bhp)
