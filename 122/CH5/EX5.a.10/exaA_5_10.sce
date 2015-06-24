// Example A-5-10
// Plot the unit step response and find the transient parameters
// viz. - rise time, peak time , settling time and maximum overshoot

clear; clc;
xdel(winsid());  //close all windows
mode(0);

// Please edit path if needed
// cd "/<your code path>/";
// exec("stepch.sci");

N = poly( [12.811 18 6.3223],'s','c') ;
D = poly( [12.811 18 11.3223 6 1], 's','c');
G = syslin('c',N,D);
[Mp tp tr ts] = stepch(G,0,20,0.01,0.02)

