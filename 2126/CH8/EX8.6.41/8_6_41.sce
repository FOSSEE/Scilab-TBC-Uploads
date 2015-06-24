clc
clear

//Calculation 

//Differentiating P=m*(Cj-u)*u and equating it to zero we get jet speed ratio as 0.5
sig=0.5 //Jet speed ratio 
eff_max=((2*sig)/(1+sig)) //Propulsive efficiency for optimum thrust power, wrong notation in textbook.

//Output
printf('Propulsive efficiency for optimum thrust power is %3.3f',eff_max)
