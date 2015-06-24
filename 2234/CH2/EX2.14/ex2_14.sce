clc;
v=2;  //voltage in volts
l=10^-3;  //inductance in Henry
i=10*10^-3;  //current
di=v/l;  //change in current in A/sec
t=i/di;  //calculating time
disp(t,"Time required to reach 0.01 A in sec = ");  //displaying result