//Chapter 16_Bipolar and MOS Digital Gate Circuits
//Caption : Fanouts
//Example 16.3: A TTL gate is guartnteed to sink 10mA without exceeding ann output voltage Vol=0.4V and to source 5mA without dropping below Voh=2.4V. If Tih=100uA at 2.4V and Iil=1mA at 0.4V,calculate the low-state and high-state fan-outs.
// Solution:
clear;
clc;
// for TTL gate
// fanout at low output is= collector saturation current of output transitor/load current of the driven gate.
// fanout for high output is=source current in driving gatte/input current of load gate
// from question given
Ic3=10*10^-3;// collector saturatioon current at output transistor
Ie=1*10^-3;// load current of driven gate
Ie4=5*10^-3;// source current in driving gate
Ic1=100*10^-6;// input current of load gate
Fl=Ic3/Ie;
disp(Fl,'fan out at low output state is:')
Fh=Ie4/Ic1;
disp(Fh,'fan out at high output state is:')