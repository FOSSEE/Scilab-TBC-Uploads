clc;clear;
//Example 11.6

//given data
hf=1620;//half life in yrs
Mo=1/100;//mass in gm

//calculations
k=0.693/hf;
M=(1-Mo);
t=log(1/M)/k;
disp(t,'time reqd for (i) in yrs');
M=Mo;
t=log(1/M)/k;
disp(t,'time reqd for (ii) in yrs')