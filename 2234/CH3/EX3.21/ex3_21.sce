clc;
v=12;  //voltage in volt
f=60;  //frequency in Hz
vt=v*sqrt(2);  //true voltage
vs=vt/10;  //sagging voltage
disp(vs);
av=vt-(vs/2);  //calculating average value
disp(av,"Average voltage in volt = ");  //displaying result