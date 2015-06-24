clc;
t=1200;  //time in second
P=100;  //power in Watts
V=230;  //voltage in Volts
R=(V^2)/P;  //calculating resistance
V1=115;  //supply voltage in Volts
E=((V1^2)*t)/R;  //calculating energy
disp(E,"Energy dissipated by bulb in Joule = ");  //displaying result