// Example 5.6;multiplier and sensivity
clc;
clear;
// given :
format('v',6)
rm=50;//resistance in ohms
rsh=rm;//shunt resistance in ohms
it=2;//current in mA
erms=10;//rms voltage in volts
ede=0.45*erms;//voltage in volts
rd1=400;//resistance in ohms
x=(rm*rsh)/(rm+rsh);//resistance in ohms
r1=ede/(it*10^-3);//resistance in ohms
rs=r1-x-rd1;//resistance in ohms
disp("part (a)")
disp(rs,"multiplier resistance Rs is,(Ohm)=")
S=r1/erms;//sensivity in ohms/V
disp("part (b)")
disp(S,"sensivity is,(Ohm/V)=")
