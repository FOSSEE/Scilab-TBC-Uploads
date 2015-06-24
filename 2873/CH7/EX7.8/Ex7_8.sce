// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 8")
m=5;//steam flow rate in kg/s
p1=5*1000;//initial pressure of steam in Kpa
T1=(500+273.15);//initial temperature of steam in K 
p2=0.2*1000;//final pressure of steam in Kpa
T1=(140+273.15);//final temperature of steam in K
po=101.3;//pressure of steam at dead state in Kpa
To=(25+273.15);//temperature of steam at dead state in K  
Q=600;//heat loss through turbine in KJ/s
disp("let inlet and exit states of turbine be denoted as 1 and 2")
disp("at inlet to turbine,")
disp("from steam tables,h1=3433.8 KJ/kg,s1=6.9759 KJ/kg K")
h1=3433.8;
s1=6.9759;
disp("at exit from turbine,")
disp("from steam tables,h2=2748 KJ/kg,s2=7.228 KJ/kg K")
h2=2748;
s2=7.228;
disp("at dead state,")
disp("from steam tables,ho=104.96 KJ/kg,so=0.3673 KJ/kg K")
ho=104.96;
so=0.3673;
disp("availability of steam at inlet,A1=m*((h1-ho)-To*(s1-so))in KJ")
A1=m*((h1-ho)-To*(s1-so))
disp("so availability of steam at inlet=6793.43 KJ")
disp("applying first law of thermodynamics,")
disp("Q+m*h1=m*h2+W")
disp("so W=m*(h1-h2)-Q in KJ/s")
W=m*(h1-h2)-Q
disp("so turbine output=2829 KW")
disp("maximum possible turbine output will be available when irreversibility is zero.")
disp("W_rev=W_max=A1-A2")
disp("W_max=m*((h1-h2)-To*(s1-s2))in KJ/s")
W_max=m*((h1-h2)-To*(s1-s2))
disp("so maximum output=3804.81 KW")
disp("irreversibility can be estimated by the difference between the maximum output and turbine output.")
disp("I=W_max-W in KW")
I=W_max-W
disp("so irreversibility=975.81807 KW")
disp("NOTE=>In book,W_max is calculated wrong,so irreversibility also comes wrong,which are corrected above.")
