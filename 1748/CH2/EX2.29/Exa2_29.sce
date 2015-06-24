//Exa 2.29
clc;
clear;
close;
//Given data :
format('v',6);
//At 3% slip
OutputPower=24;//in KW(At 3% slip)
S=3;//in %
Efficiency=(1-S/100);//unitless
InputPower=OutputPower/Efficiency;//in KW
//At 5% slip
S=5;//in %
Efficiency=(1-S/100);//unitless
OutputPower=InputPower*Efficiency;//in KW
disp(OutputPower,"Mechanical power output at a slip of 5%(in KW) : ");