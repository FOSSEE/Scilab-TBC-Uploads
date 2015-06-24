// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 24")
C1=150;//steam entering velocity in m/s
C2=50;//steam leaving velocity in m/s
To=(15+273);//dead state temperature in K
W=1000;//expansion work in KJ/kg
disp("from steam tables,h1=h_50bar_600oc=3666.5 KJ/kg,s1=s_50bar_600oc=7.2589 KJ/kg K,h2=hg=2584.7 KJ/kg,s2=sg=8.1502 KJ/kg K")
h1=3666.5;
s1=7.2589;
h2=2584.7;
s2=8.1502;
disp("inlet stream availability=(h1+C1^2*10^-3/2)-To*s1 in KJ/kg")
(h1+C1^2*10^-3/2)-To*s1
disp("input stream availability is equal to the input absolute availability.")
disp("exit stream availaability=(h2+C2^2*10^-3/2)-To*s2 in KJ/kg")
(h2+C2^2*10^-3/2)-To*s2
disp("exit stream availability is equal to the exit absolute availability.")
disp("W_rev in KJ/kg")
W_rev=1587.18-238.69
disp("irreversibility=W_rev-W in KJ/kg")
W_rev-W
disp("this irreversibility is in fact the availability loss.")
disp("inlet stream availability=1587.18 KJ/kg")
disp("exit stream availability=238.69 KJ/kg")
disp("irreversibility=348.49 KJ/kg")
disp("NOTE=>In book this question is solve using dead state temperature 25 degree celcius which is wrong as we have to take dead state temperature 15 degree celcius,now this question is correctly solve above taking dead state temperature 15 degree celcius as mentioned in question. ")
