clc;
v=10;  //voltage in volt
t=0.001;  //lasting time in sec
t1=0.01;  //recuring time in sec
r=1;  //resistance in Ohm
p=10;  //average power in Watt
v=sqrt(p/r);  //calculating dc voltage
disp(v,"DC Voltage in Volt = ");  //displaying result
disp(v,"Therefore, the RMS value = ");  //displaying result