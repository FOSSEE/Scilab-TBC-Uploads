clc
close
//chapter 9: Stability Analysis
//Example 9.5 page no 368
//given
clear
Ka=(2.2e3)^2
wz=(2*%pi)/(2.2/sqrt((2.2e3)^2))
s=poly(0,'s')
h=syslin('c',(1000*(s/(wz+1))/(s^2/Ka +(s/wz) +1)))
clf();bode(h,1,1000);
