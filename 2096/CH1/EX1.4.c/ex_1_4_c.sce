
// Example 1.4.c :relative error
clc, clear
// given :
vm=42; // pressure in bar
vt=41.4; // pressure in bar
Es=vm-vt;
Er=Es/vt;
disp("relative error  is "+string(Er)+" or "+string(100*Er)+" %")
