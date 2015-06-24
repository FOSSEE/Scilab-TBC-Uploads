// Exa 3.6
format('v',6)
clc;
clear;
close;
// Given data
Vo= -6;// in V    (for Vi<=-6.6 V)
Vo= 8;// in V     (for Vi>=8.8 V)
// Vi= 10000*i+100000*i or i= Vi/110000     (i)
Vi= -6.6:0.1:8.8;
// Vo= 100000*i 
Vo= 100000*Vi/110000;//     (substituting i from eq(i))
plot(Vi,Vo);
xlabel("Vi in volts")
ylabel("Vo in volts")
title("The overall transfer characteristics")
disp("The overall transfer characteristics shown in figure.")
