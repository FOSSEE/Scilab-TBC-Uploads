clc
clear

//INPUT
t1=0;//temperature of water in deg.C
t2=0;//temperature of ice in deg.C
J=4.18*10^7;//the joules thomson coefficent in erg/cal
l=80;//latent heat og fusion kj/kg
g=981;//accelaration due to gravity in cm/sec^2
 
//CALCULATIONS
h=l*J/(15*g);//height from which ice has fallen
//1/15 ice has been melted 

//OUTPUT
mprintf('the height from which ice has fallen is %3.2f cm',h)
