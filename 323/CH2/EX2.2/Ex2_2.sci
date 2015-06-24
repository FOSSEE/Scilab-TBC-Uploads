//Chapter 2,Ex 2.2,Pg 2.5
function [resistance_1] = deltatostar(R)
resistance1=R1
resistance2=R2
resistance_1= (resistance1*resistance2)/R
endfunction
clc;
disp("Refer to the diagram shown in the problem")
R1=10 //Resistance in ohms
R2=10 //Resistance in ohms
R3=10 //Resistance in ohms
R=R1+R2+R3
Ra=deltatostar(R) //Converting the delta network to star network of resistances. All the resistances in the star network will be the same as the resistances in the delta network have the same value
R_1= 1/(1/(Ra+10) + 1/(Ra+10))
R_eq=Ra+R_1
printf("\n The equivalent resistance R= %.0f ohms\n",R_eq)