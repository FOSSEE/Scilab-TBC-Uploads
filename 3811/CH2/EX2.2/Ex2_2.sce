//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter2
//example 2.2
clc;
clear;
sv=(2^(1/2))*120*sind(30);//rms value of voltage source
K=0.2; // constant whose value dependent ondevice characteristics 
bv=200; //base voltage in volts
ig=((log(sv/bv))/(-K)); //gate current in mA
disp(ig,'gate current required to trigger the SCR at 30 degree  in milliamphere is')
