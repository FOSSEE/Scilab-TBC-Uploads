//Chapter1,Example1.30,Pg1.32
function [current1] = voltagetocurrent(voltage1)
    resistance1=R
    current1=voltage1/resistance1
endfunction
function[voltage2]=currenttovoltage(current2)
    resistance2=R
    voltage2=current2*resistance2
endfunction
clc;
disp("Refer to the figure shown in the problem")
R=2 //Resistance in ohms
V=currenttovoltage(5) //Converting current source with parallel resistance to voltage source with series resistance
V=V-6 //Equivalent resistance in the closed path
I=voltagetocurrent(V) //Converting voltage source with series resistance to current source with parallel resistance
I=I+2 //Total current provided by combination of current sources in circuit
I4=I*2/(2+4) //Current through the 4 ohm resistance
printf("\n Current through the 4 ohm resistance = %.2f A \n",I4)
