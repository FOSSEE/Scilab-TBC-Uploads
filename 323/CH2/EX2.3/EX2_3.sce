//Chapter 2,Ex 2.3,Pg 2.7
function [resistance_1] = startodelta(R)
    resistance_1= (R1*R + R2*R + R1*R2)/R
endfunction
clc;
disp("Refer to the diagram shown in the figure")
R1=6 //One of the Resistances of the star network to be converted into delta
R2=4 //One of the Resistances of the star network to be converted into delta 
R3=3
//To find out individual resistances of the star network
Ra=startodelta(R3)
R3=4
R2=3
Rb=startodelta(R3)
R3=6
R1=4
Rc=startodelta(R3)
R_1= 1/((1/Ra) + (1/9))
R_2= 1/((1/Rb)+(1/1.5))
R_eq= 1/((1/6) + (1/(R_2+0.9)))
printf("\n Equivalent resistance R= %.2f ohms\n",R_eq) //Equivalent resistance of the circuit

