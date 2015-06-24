clc;clear;
//Example 16.9

//given data
T=17;
P=92;

//from Table A-4
Pv=1.96;

//constants from Table 16-2
H=62000;

//calculations
Pda=P-Pv;//dry air
yda=Pda/H/100;//in bar
disp(yda,'mole fraction of air')
