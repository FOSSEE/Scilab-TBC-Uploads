// Example 3.1: determine collector efficiency
clc, clear;
Vmax=25; //collector emitter voltag in volts
Vmin=2.5;//collector emitter voltag in volts
eta=(50*((Vmax-Vmin)/(Vmax+Vmin)));
disp(eta,"collector efficiency (%) = ")
