//Chapter1,Example1.31,Pg1.33
function [current1] = voltagetocurrent(voltage1)
    resistance1=R
    current1=voltage1/resistance1
endfunction
function[voltage2]=currenttovoltage(current2)
    resistance2=R
    voltage2=current2*resistance2
endfunction
clc;
disp("Refer to the figure shown in the diagram")
disp("Since nodes 1 and 2 are maintained at the same voltage by the sources, the connection between nodes 1 and nodes 2 is removed. Now the two voltage sources have resistors in series and source transformation can be applied")
R=4 //Resistance in ohms
I=voltagetocurrent(18) //Converting voltage source with series resistance to current source with parallel resistance
R=4*2/(4+2) //Since the 4 ohm and 2 ohm resistances are in parallel
V=currenttovoltage(I) //Converting current source with parallel resistance to voltage source with series resistance
Va=(6+(5.985/2.33))/((1/3)+(1/2.33)+(1/6))
printf("\n Voltage at node A = %.2f V \n",Va)