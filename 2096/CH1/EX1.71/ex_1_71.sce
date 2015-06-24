//Example 1.71// READING
clc;
clear;
close;
Pi=25;//in kW
El=440;//line voltage in volts
pf=0.6;//power factor 
ph=acosd(pf);//
tp=tan(ph);//
dw=(tp*Pi)/((3)^(1/3));//change in weights
W1=22.12;//IN kW
W2=25-W1;//
disp(W1,"reading in kW")
disp(W2,"reading in kW")
