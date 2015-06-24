//Example 3.9: limiting value of unknown resistance
clc;
clear;
close;
//given data :
P=1000;// in ohm
Q=1000;// in ohm
S=3154;// in ohm
R=((P/Q)*S);
dp=0.05;//percentage error
dq=0.05;//percentage error
ds=0.1;//percentage error
dr=dp+dq+ds;//percentage error
x=R+((dr*10)*R)/100;//
disp("limiting value of resistance is "+string(R)+"±"+string(dr)+"% to "+string(round(x))+" ohm")
