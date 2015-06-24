clc();
clear;
//To determine uncertainity in velocity
deltax=0.92*10^-9;                         //uncertainity in position
m=9.1*10^-31;                              //mass of electron
h=6.626*10^-34;                            //plancks constant
deltav=h/(4*%pi*m*deltax)                 //uncertainity in velocity
printf("The uncertainity in velocity is %f m/s",deltav);