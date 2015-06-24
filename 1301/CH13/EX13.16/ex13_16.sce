clc;
v=120;     //potential diff in volt
r1=240;    //resistance in ohm
r2=240;    //resistance in ohm
r=r1+r2;   //resistance in series
i=v/r;     //calculating current in Ampere using Ohm's law
disp(i,"(a)Current in each bulb in Ampere = ");   //displaying result
p=i*i*r1;    //calculating power dissipated in each bulb in Watt
disp(p,"(b)Power dissipated in each bulb in Watt = ");   //displaying result