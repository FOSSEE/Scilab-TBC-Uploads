clc;
v=120;     //potential diff in volt
r=240;     //resistance in ohm
i=v/r;     //current in Ampere using Ohm's law
disp(i,"(a)Current in each bulb in Ampere = ");    //displaying result
p=i*i*r;   //power in Watt
disp(p,"Power dissipated in each bulb in Watt = ");   //displaying result