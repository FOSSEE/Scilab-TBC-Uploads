// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 6")
T1=(-15+273.15);//inside temperature in K
T2=(35+273);//atmospheric temperature in K
Q2=40;//refrigeration capacity of storage plant in tonnes
disp("cold storage plant can be considered as refrigerator operating between given temperatures limits")
disp("capacity of plant=heat to be extracted=Q2 in KW")
disp("we know that,one ton of refrigeration as 3.52 KW ")
disp("so Q2=Q2*3.52 in KW")
Q2=Q2*3.52
disp("carnot COP of plant(COP_carnot)=1/((T2/T1)-1)")
COP_carnot=1/((T2/T1)-1)
disp("performance is 1/4 of its carnot COP")
disp("COP=COP_carnot/4")
COP=COP_carnot/4
disp("also actual COP=Q2/W")
disp("W=Q2/COP in KW")
W=Q2/COP
disp("hence power required(W)in KW")
W






