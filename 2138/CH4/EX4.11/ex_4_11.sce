//Example 4.11: horse power
clc;
clear;
close;
//given data :
h=30; // in m
Fl=10;// friction loss in %
Hl=(Fl/100)*h;
total_H=h+Hl;
eta=90; // eficiency of pump
w=1000; // water weight in kg
flow_rate=243; // in per hour
W_done=(flow_rate*w*total_H)/60; // in kg-m/min
output=W_done/4500; //output of pump in hp
in=(output*100)/eta;
O=in;
disp(O,"output of the motor,O(hp) = ")
