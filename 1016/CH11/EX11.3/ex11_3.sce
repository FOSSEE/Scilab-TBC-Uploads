clc;clear;
//Example 11.3

//given data
No=4750;
N=2700;//rate in counts/minute
t=5;//time in minutes

//calculation 
k=log(No/N)/t;
disp(k,'radioactive disintegration constant in 1/min');
hf=0.693/k;
disp(hf,'half life in minutes')