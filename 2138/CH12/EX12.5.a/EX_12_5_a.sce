//Example 12.5.a // power factor
clc;
clear;
close;
w1=4.5;//first reading in kW
w2=3;//second reading in kW , this value is given wrong in question
tw=w1+w2;//in kW
dw=w1-w2;//in kW
pfa=atand(sqrt(3)*(dw/tw));
pf=cosd(pfa);////power factor when both the eadings are positive
disp(pf,"power factor when both the readings are positive")
