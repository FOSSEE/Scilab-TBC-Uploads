//Example 4.19//candle power
clc;
clear;
close;
vl=220;//voltage of lamp
wl=60;//wattage of lamp
wl1=75;//in watts
v2=440;// in volts
r1=((vl^2)/wl);// in ohms
r2=((vl^2)/wl1);// in ohms
i=(v2/(r1+r2));//in amperes
v1=i*r1;// volts 
v12=i*r2;//in volts
cp6=(ceil(v1)/vl)^4 *(100);//candle power 
cp7=(v12/vl)^4*(100);//candle power
disp(ceil(cp6),"potential drop across 60 watt lamps in volts")
disp(v12,"potential drop across 75 watt lamps in volts")
disp(round(cp6),"candle power of 60 watts lampe in percentage")
disp(cp7,"candle power of 75 watts lampe in percentage")
//answer is wrong in the book
