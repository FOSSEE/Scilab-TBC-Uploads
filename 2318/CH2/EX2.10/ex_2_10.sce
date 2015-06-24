//Example 2.10://load impedance and combination impedance
clc;
clear;
close;

v3=80;//volts
i=4;//amperes
zl=v3/i;//ohms
v1=140;//volts
z=v1/i;//ohms
disp(zl,"load impedance in ohm is")
disp(z,"impedance of combination in ohm is")
v2=75;//volts (it is given 72 in the textbook)
r=v2/i;//
pl=((v1^2-v2^2-v3^2)/(2*r));//watts
pr=i^2*r;//watts
disp(pl,"power absorbed by the load is,(W)=")
disp(pr,"power absorbed by the non inductive resistor is,(W)=")
pfl=((v1^2-v2^2-v3^2)/(2*v2*v3));//power factor of the load
tp=pr+pl;//total power in watts
pfc=tp/(v1*i);//power factor
format('v',5)
disp(pfl,"power factor of load is")
format('v',4)
disp(pfc,"power factor of the whole circuit is")
