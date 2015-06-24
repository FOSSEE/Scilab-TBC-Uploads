//Chapter 2,Ex 2.1,Pg 2.4
function [resistance_1] = deltatostar(R)
    resistance1=R1
    resistance2=R2
    resistance_1= (resistance1*resistance2)/R
endfunction
clc;
disp("Refer to the diagram shown in the figure")
R1=4.5 //Resistance in ohms
R2=7.5 //Resistance in ohms
R3=3 //Resistance in ohms
R=R1+R2+R3
Ra=deltatostar(R) //Converting the given delta network to star network
R2=3 //Resistance in ohms
Rb=deltatostar(R) //Converting delta network to star network
R1=7.5
Rc=deltatostar(R) //Converting delta network to star network
R_1= 1/((1/(Rb+Rb+4)) + (1/(Rc+Rc+3)))
R_eq=(2*Ra) + R_1 // Equivalent resistance of the entire network
printf("\n The equivalent resistance R = %.2f ohms \n",R_eq)
