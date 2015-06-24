// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 20")
disp("here throttling process is occuring therefore enthalpy before and after expansion remains same.Let initial and final states be given by 1 and 2.Initial enthalpy,from steam table.")
disp("at 500 degree celcius,h1_10bar_500oc=3478.5 KJ/kg,s1_10bar_500oc=7.7622 KJ/kg K,v1_10bar_500oc=0.3541 m^3/kg")
h1_10bar_500oc=3478.5;
s1_10bar_500oc=7.7622;
v1_10bar_500oc=0.3541;
disp("finally pressure becomes 1 bar so finally enthalpy(h2) at this pressure(of 1 bar)is also 3478.5 KJ/kg which lies between superheat temperature of 400 degree celcius and 500 degree celcius at 1 bar.Let temperature be T2,")
h2=h1_10bar_500oc;
disp("h_1bar_400oc=3278.2 KJ/kg,h_1bar_500oc=3488.1 KJ/kg from steam table")
h_1bar_400oc=3278.2;
h_1bar_500oc=3488.1;
disp("h2=h_1bar_400oc+(h_1bar_500oc-h_1bar_400oc)*(T2-400)/(500-400)")
disp("so final temperature(T2)in K")
disp("T2=400+((h2-h_1bar_400oc)*(500-400)/(h_1bar_500oc-h_1bar_400oc))")
T2=400+((h2-h_1bar_400oc)*(500-400)/(h_1bar_500oc-h_1bar_400oc))
disp("entropy for final state(s2)in KJ/kg K")
disp("s2=(s_1bar_400oc+((s_1bar_500oc-s_1bar_400oc)*(495.43-400)/(500-400)))")
disp("here from steam table,s_1bar_400oc=8.5435 KJ/kg K,s_1bar_500oc=8.8342 KJ/kg K")
s_1bar_400oc=8.5435;
s_1bar_500oc=8.8342;
s2=s_1bar_400oc+((s_1bar_500oc-s_1bar_400oc)*(495.43-400)/(500-400))
disp("so change in entropy(deltaS)in KJ/kg K")
disp("deltaS=s2-s1_10bar_500oc")
deltaS=s2-s1_10bar_500oc
disp("final specific volume,v2=v_1bar_400oc+((v_1bar_500oc-v_1bar_400oc)*(95.43)/(500-400)) in m^3/kg")
disp("here from steam table,v_1bar_500oc=3.565 m^3/kg,v_1bar_400oc=3.103 m^3/kg")
v_1bar_500oc=3.565;
v_1bar_400oc=3.103;
v2=v_1bar_400oc+((v_1bar_500oc-v_1bar_400oc)*(95.43)/(500-400))
disp("percentage of vessel volume initially occupied by steam=v1_1bar_500oc*100/v2")
v1_10bar_500oc*100/v2
