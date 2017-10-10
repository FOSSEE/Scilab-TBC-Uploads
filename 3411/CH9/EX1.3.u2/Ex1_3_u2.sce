//Example 1_3_u2
clc();
clear;
//To calculate the uncertenity in momentum
h=6.63e-34                 //units in m^2 kg s^-1
deltax=1         //units in nm
deltax=deltax*10^-9                //units in meters
deltap=h/(4*%pi*deltax)          //units in Kg meter s^-1
printf("The uncertenity in momentum is delta p=")
disp(deltap)
printf("Kg ms^-1")
//In text book the answer is printed wrong as 0.53*10^-15 Kg ms^-1 the correct answer is  5.276D-26  Kg ms^-1 
