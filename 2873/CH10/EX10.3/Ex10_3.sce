// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 10 Example 3")
n=0.9;//mechanical efficiency of engine
BP=38;//brake power in KW
disp("indicated power(IP)=brake power/mechanical efficiency=BP/n in KW")
IP=BP/n
disp("frictional power loss(FP)=IP-BP in KW")
FP=IP-BP
disp("brake power at quater load(BPq)=0.25*BP in KW")
BPq=0.25*BP
disp("mechanical efficiency(n1)=BPq/IP")
IP=BPq+FP;
n1=BPq/IP
disp("in percentage")
n1=n1*100
disp("so indicated power=42.22 KW")
disp("frictional power loss=4.22 KW")
disp("mechanical efficiency=69.24%")
