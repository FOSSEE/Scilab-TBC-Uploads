//Example 5 Page No: 1.84
//given
clear
sr=0.5e6;//volt/sec
freq1=40e3;//hz
a=10;format(6);
//determine max peak to peak input signal
vm=sr/(2*3.14*freq1);
vm=2*vm;
v1=vm/a;
disp('Max peak to peak input signal = '+string(v1)+' V');
