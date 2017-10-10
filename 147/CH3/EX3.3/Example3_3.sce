close();
clear;
clc;
//resistance 'R', rate of electrical energy 'rate', time of operation 't', time period 'T'
T = 0.01; //s
R = 20; //ohm
rate = 0.06; //$ per kWh
time = 24; //hours
//from graph, voltage as function of time 'v'
function V = v(t)
  V = 10^4 * t; //V
  endfunction
//current as a function of time 'i'
function I = i(t)
  I = v(t)/R; //A
endfunction
//power as afunction of time 'p'
function power = p(t)
  power = v(t)*i(t); //W
  endfunction
//power 'P'
P = 1/T * intg(0,T,p)/1000; //kW
energy = P*time; //kWh
//cost of electrical energy 'cost'
cost = rate*energy; //$
mprintf("Electrical energy costs $ %0.2f for %d hours",cost,time);
