clc;clear;
//Example 11.1

//given data
ttg=8378-1898;//total time gap in yrs
hf=1620;//half life in yrs
n=ttg/hf;//no of half-periods
Mo=200;//amt of radium in mg

//calculations
M=Mo*(0.5)^n;
disp(M,'radium left in mg')