clc
clear

//INPUT
tc=132;//critical temperature in K
pc=37.2;//critical pressure in atm
r=82.07;//universal gas constant in cm^3atm/mole/K

//CALCULATIONS
a=27*(r^2)*(tc^2)/(64*pc);//value of a in atm/cm^6/mol^2
b=r*tc/(8*pc);//value of b in cm^3/mol

//OUTPUT
mprintf('the value of is %3.2f atm/cm^6/mol^2 \n the value of b is %3.2f cm^3/mol',a,b)
