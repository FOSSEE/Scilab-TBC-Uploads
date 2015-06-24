
// Example 1.3.b : relative error
clc, clear
// given :
vm=2.65; // in volts
vt=2.70; // in volts
v=5;// full scale range of voltage
Es=vm-vt;
Er1=Es/vt;
Er2=Es/v;
disp("relative error as a function of true value is "+string(Er1)+" or "+string(100*Er1)+" %")
disp("relative error as a function of full scale deflection is "+string(Er2)+" or "+string(100*Er2)+" %")
