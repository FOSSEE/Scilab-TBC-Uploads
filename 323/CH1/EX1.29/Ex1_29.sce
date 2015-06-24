//Chapter1,Example1.29,Pg1.32
function [current1] = voltagetocurrent(voltage1)
    resistance1=R
    current1=voltage1/resistance1
endfunction
function[voltage2]=currenttovoltage(current2)
    resistance2=R
    voltage2=current2*resistance2
endfunction
clc;
disp("Refer to the diagram shown in the figure")
R=3 //Resistance in ohms
I=voltagetocurrent(10)
I=I+10 //Total current in the circuit
R=3*2/(3+2)
V=currenttovoltage(13.33)
I=(50-16)/(5+1.2) //Current in the circuit
P=50*I //Power delivered by the 50V source
printf("\n Power delivered by the 50V source=%.0f W \n",P)
