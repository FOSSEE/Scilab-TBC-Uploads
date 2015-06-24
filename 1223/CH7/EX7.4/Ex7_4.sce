clear;
clc;
//Example 7.4
fL=20*10^-3;//KHz
Rd=6.7;
Rl=10;
Ts=1/(2*%pi*fL);
printf('\ntime constant=%.3f ms\n',Ts)
Cc=Ts/(Rd+Rl);
printf('\ncoupling capacitance=%.3f microF\n',Cc)
