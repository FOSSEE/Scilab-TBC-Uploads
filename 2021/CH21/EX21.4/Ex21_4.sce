//Finding of Power, Working ,Idle Period
//Given
H=12;
t=100;
W=98100;
v=0.6;
w=981*12;
//To Find
P=w/1000;
T1=H/v;
T2=100-T1;
disp("Power Required ="+string(P)+" Kilo watt");
disp("Time for working ="+string(T1)+" seconds");
disp("Idle Time ="+string(T2)+" seconds");
