clc
//Intitalisation of variables
clear
s1= -0.0059 //mole per litre
x1= 0.0118 //mole per lit
x2= 0.0269 //mole per litre
//CALCULATIONS
S= s1+sqrt(0.25*x1^2+x2^2)
//RESULTS
printf ('Solubility = %.4f mole per litre',S)
