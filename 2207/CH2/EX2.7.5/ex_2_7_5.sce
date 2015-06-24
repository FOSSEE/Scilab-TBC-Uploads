//Example 2.7.5;//resistance
clc;
clear;
close;
//given data :
format('v',4)
vg=15;//in volys
vgk=0.7;//in volts
pg=0.5;// in watts
ig=pg/vgk;//in amperes
rg=(vg-vgk)/ig;//in ohms
disp(rg,"gate source resistance in ohm ")
