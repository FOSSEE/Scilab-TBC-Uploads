// Example 1.39

clear; clc; close;

format('v',7);
// Given data
Pin=50;//in KW
StatorLoss=800;//in watts
f=50;//in Hz
fr=90;//cycles/min

//Calculations
fr=fr/60;//in Hz
S=fr/f;//slip
P2=Pin*1000-StatorLoss;//watts
//Formula : P2:Pc:Pm=1:S:1-S
Pm=P2*(1-S);//in watts
disp(Pm,"Total Mechanical power devloped in watts : ");
