// Example 4.1;NUMBER OF TURNS
clc;
close;
clear;
// given :
format('v',7)
e1=2200;//voltage in volts
f=50;//frequency in Hz
e2=220;//voltage in volts
fd=1.6;//magnetic field in Tesla
a=3600;//area in mm^2
n1=(e1/(4.44*f*fd*a*10^-6));//number  of turns
n2=(e2/(4.44*f*fd*a*10^-6));//number of turns
disp(round(n1),"number of primary winding turns are")
disp(round(n2),"number of secondary winding turns are")
