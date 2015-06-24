//Chapter1,Example1.28,Pg30
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
R=3 //Resistance in ohms
I1=voltagetocurrent(6) //Converting voltage source with series resistance to current source with parallel resistance
R=2
I2=voltagetocurrent(4)
R=1
I3=voltagetocurrent(3)
R1=2*2/(2+2) //Equivalent resistance of upper portion
R2=3*1/(3+1) //Equivalent resistance of lower portion
I11=1+I2 //Total current of upper portion
I12=-I1+I3 //Total current of lower portion
R=R1
V1=currenttovoltage(I11)
R=R2
V2=currenttovoltage(I12)
V=V1+V2
R=R1+R2
printf("\n Total voltage source = %.2f V \n",V)
printf("\n Total equivalent resistance = %.2f ohms \n",R)

