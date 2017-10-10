//Example 14 Page No: 1.89
//given
sr=0.5e6;//volt/sec
a=50;
freq1=20e3;//hz
//determine max peak to peak voltage
v1=sr/(2*3.14*freq1*a);format(3);
disp('input voltage '+string(v1*10^3)+'mV');
