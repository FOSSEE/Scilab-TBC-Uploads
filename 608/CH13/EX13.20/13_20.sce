//Problem 13.20: The circuit diagram of Figure 13.48 shows dry cells of source e.m.f. 6 V, and internal resistance 2.5 ohm. If the load resistance RL is varied from 0 to 5 ohm in 0.5 ohm  steps, calculate the power dissipated by the load in each case. Plot a graph of RL (horizontally) against power (vertically) and determine the maximum power dissipated.

//initializing the variables:
V = 6; // in volts
r = 2.5; // in ohms

//calculation:
RL=(0:0.5:5)';
function [y]=f(RL)
    y = RL*(V/(r + RL))^2;
endfunction
fplot2d(RL, f)
xtitle("graph of (RL) against power(P)", "RL(ohm)", "P(W)")