//Example 12.5.b // power factor
clc;
clear;
close;
w1=4.5;//first reading in kW
w2=-3;//second reading in kW , this value is given wrong in question
tw=w1+w2;//in kW
dw=w1-w2;//in kW
pfa=atand(sqrt(3)*(dw/tw));
pf=cosd(pfa);////power factor when second reading is obtained by reversing the connection
disp(pf,"power factor when second reading is obtained by reversing the connections ")
