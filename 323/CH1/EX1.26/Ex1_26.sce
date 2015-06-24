//Chapter1,Ex1.26,Pg1.29
function [current1] = voltagetocurrent(voltage1)
    resistance1=R
    current1=voltage1/resistance1
endfunction
function[voltage2]=currenttovoltage(current2)
    resistance2=R
    voltage2=current2*resistance2
endfunction
clc;
disp("Refer to the figure shown in the question")
R=5 //Resistance in ohms
I1=voltagetocurrent(20) //Converting voltage source with series resistance to current source with parallel resistance
I=I1+3 //Total of the current sources in the circuit
R=1/((1/30)+(1/50)+(1/5)+(1/6)) //Equivalent resistance in the circuit
V1=currenttovoltage(I) //Converting current source with parallel resistance to voltage source with series resistance
printf("\n Equivalent resistance in network = %.2f ohms \n",R)
printf("\n Equivalent voltage source in network = %.2f V \n",V1)



