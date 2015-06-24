// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 10")
disp("at inlet to HP turbine,h2=3287.1 KJ/kg,s2=6.6327 KJ/kg K")
h2=3287.1;
s2=6.6327;
disp("By interpolation state 3 i.e. for isentropic expansion betweeen 2-3 lies at 328.98oc at 30 bar.h3=3049.48 KJ/kg")
h3=3049.48;
disp("actual enthapy at 3_a,h3_a=h2-0.80*(h2-h3)in KJ/kg")
h3_a=h2-0.80*(h2-h3)
disp("enthalpy at inlet to LP turbine,h4=3230.9 KJ/kg,s4=6.9212 KJ K")
h4=3230.9;
s4=6.9212;
disp("for ideal expansion from 4-6,s4=s6.Let dryness fraction at state 6 be x6.")
s6=s4;
disp("s6=6.9212=sf at 0.075 bar+x6* sfg at 0.075 bar in KJ/kg K")
disp("from steam tables,at 0.075 bar,sf=0.5764 KJ/kg K,sfg=7.6750 KJ/kg K")
sf=0.5764;
sfg=7.6750;
disp("so x6=(s6-sf)/sfg")
x6=(s6-sf)/sfg
x6=0.827;//approx.
disp("h6=hf at 0.075 bar+x6*hfg at 0.075 bar in KJ/kg K")
disp("from steam tables,at 0.075 bar,hf=168.79 KJ/kg,hfg=2406.0 KJ/kg")
hf=168.79;
hfg=2406.0;
h6=hf+x6*hfg
disp("for actual expansion process in LP turbine.")
disp("h6_a=h4-0.85*(h4-h6) in KJ/kg")
h6_a=h4-0.85*(h4-h6)
disp("Ideally,enthalpy at bleed point can be obtained by locating state 5 using s5=s4.The pressure at bleed point shall be saturation pressure corresponding to the 140oc i.e from steam tables.Let dryness fraction at state 5 be x5.")
p5=3.61;
s5=s4;
disp("s5_a=6.9212=sf at 140oc+x5*sfg at 140oc")
disp("from steam tables,at 140oc,sf=1.7391 KJ/kg K,sfg=5.1908 KJ/kg K")
sf=1.7391;
sfg=5.1908;
disp("so x5=(s5-sf)/sfg")
x5=(s5-sf)/sfg
x5=0.99;//approx.
disp("h5=hf at 140oc+x5*hfg at 140oc in KJ/kg")
disp("from steam tables,at 140oc,hf=589.13 KJ/kg,hfg=2144.7 KJ/kg")
hf=589.13;
hfg=2144.7;
h5=hf+x5*hfg
disp("actual enthalpy,h5_a=h4-0.85*(h4-h5)in KJ/kg")
h5_a=h4-0.85*(h4-h5)
disp("enthalpy at exit of open feed water heater,h9=hf at 30 bar=1008.42 KJ/kg")
h9=1008.42;
disp("specific volume at inlet of CEP,v7=0.001008 m^3/kg")
v7=0.001008;
disp("enthalpy at inlet of CEP,h7=168.79 KJ/kg")
h7=168.79;
disp("for pumping process 7-8,h8=h7+v7*(3.61-0.075)*10^2 in KJ/kg")
h8=h7+v7*(3.61-0.075)*10^2
disp("Applying energy balance at open feed water heater.Let mass of bled steam be m kg per kg of steam generated.")
disp("m*h5+(1-m)*h8=h9")
disp("so m=(h9-h8)/(h5-h8) in kg /kg of steam generated")
m=(h9-h8)/(h5-h8)
disp("For process on feed pump,9-1,v9=vf at 140oc=0.00108 m^3/kg")
v9=0.00108;
disp("h1=h9+v9*(70-3.61)*10^2 in KJ/kg")
h1=h9+v9*(70-3.61)*10^2 
disp("Net work per kg of steam generated,W_net=(h2-h3_a)+(h4-h5_a)+(1-m)*(h5_a-h6_a)-{(1-m)*(h8-h7)+(h1-h9)}in KJ/kg steam generated")
W_net=(h2-h3_a)+(h4-h5_a)+(1-m)*(h5_a-h6_a)-{(1-m)*(h8-h7)+(h1-h9)}
disp("heat added per kg of steam generated,q_add=(h2-h1)+(h4-h3_a)in KJ/kg of steam generated")
q_add=(h2-h1)+(h4-h3_a)
disp("Thermal efficiency,n=W_net/q_add")
n=W_net/q_add
disp("in percentage")
n=n*100
disp("so thermal efficiency=39.03%%")
disp("NOTE=>In this question there is some calculation mistake while calculating W_net and q_add in book, which is corrected above and the answers may vary.")
