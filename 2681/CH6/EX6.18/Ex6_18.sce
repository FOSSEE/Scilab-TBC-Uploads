//characteristc impedance of the line for air dielectric
//given
clc
b=30-2*2//mm//diameter of the outside conductor
a=10-2*1//mm//diameter of the inner conductor
Zo=138*log10(b/a)//characteristic impedance
Zo=round(Zo*100)/100///rounding off decimals
disp(Zo,'the characteristic impedance of the line for air  dielectric in ohm')
//error in the value of  b

