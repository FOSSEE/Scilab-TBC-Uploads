//Example 2.8://resistance,impedance,power,power factor ,voltage and power factor
clc;
clear;
close;
v=300;//volts
i2=2.5;//amperes
r=v/i2;//ohms
disp(r,"resistance in ohm is")
i3=4;//amperes
zl=v/i3;//ohms
disp(zl,"load impedance in ohm is")
v=300;//volts
i2=2.5;//amperes
r=v/i2;//ohms
i1=5.6;//amperes
z=v/i1;//ohms
disp(z,"impedance of combination in ohm is")
i3=4;//amperes
pl=((i1^2-i2^2-i3^2)*r)/2;//in watts
disp(pl,"power absorbed by the load in W is")
pl=((i1^2-i2^2-i3^2)*r)/2;//in watts
pfl=((i1^2-i2^2-i3^2)/(2*i2*i3));//power factor
disp(pfl,"power factor of the load is")
pr=i2^2*r;//in watts
tps=pl+pr;//in watts
disp(tps,"total power supply  is,(W)=")
tps=pl+pr;//in watts
tpf=tps/(v*i1);//power factor
disp(tpf,"total power factor is")

