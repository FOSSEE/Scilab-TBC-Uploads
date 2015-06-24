clc
clear
//DATA GIVEN
Pmi=6;                        //mean effective pressure in bar
N=1000;                       //engine speed in R.P.M.
D=0.11;                       //diameter of piston in m
L=0.14;                       //stroke length in m
n=1;                          //no. of cylinders
k=1;                          //for 2-stroke cylinder

//INDICTED POWER ,I.P.=(n*PMI*l*A*N*k*10)/6 kW
A=(%pi/4)*(D^2);
IP=(n*Pmi*L*A*N*k*10)/6;

printf('The Indicted Power developed is: %2.1f kW.',IP);
