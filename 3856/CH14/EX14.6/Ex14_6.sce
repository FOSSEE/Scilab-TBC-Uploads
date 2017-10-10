//Calculate the uncertainty in the velocity of the electron and Calculate the uncertainty in the baseball's position 

//Example 14.6

clc;

clear;

delx=0.01*0.0529*10^-9;  //Uncertainty in the electron's posiion in m

h=6.626*10^-34;  //Planck's constant in J s

delp=h/(4*%pi*delx);  //Uncertaintty of momentum in kg m s^-1

m=9.1095*10^-31;  //Mass of the electron in kg

delv=delp/m;  //The uncertainty in the velocity in m s^-1

printf("(a)Uncertainty in the velocity = %.1f*10^8 m s^-1",delv*10^-8);  

delp1=1*10^-7*6.7;  //Uncertainty in momentum in kg m s^-1

delx=h/(4*%pi*delp1);  //Uncertainty in the position in m

printf("\n(b)Uncertainty in the position = %.1f*10^-29 m ",delx*10^29); 
