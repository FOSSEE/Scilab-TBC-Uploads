// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 3")
m=15;//steam flow rate in kg/s
V2=160;//exit velocity of steam in m/s
To=(15+273);//pond water temperature in K
disp("inlet conditions,")
disp("from steam tables,,h1=3051.2 KJ/kg,s1=7.1229 KJ/kg K")
h1=3051.2;
s1=7.1229;
disp("outlet conditions,at 0.05 bar and 0.95 dryness fraction")
disp("from steam tables,sf=0.4764 KJ/kg K,s_fg=7.9187 KJ/kg K,x=0.95,hf=137.82 KJ/kg,h_fg=2423.7 KJ/kg")
sf=0.4764;
s_fg=7.9187;
x=0.95;
hf=137.82;
h_fg=2423.7;
disp("so s2=sf+x*s_fg in KJ/kg K")
s2=sf+x*s_fg
disp("and h2=hf+x*h_fg in KJ/kg")
h2=hf+x*h_fg
disp("neglecting the change in potential energy and velocity at inlet to turbine,the steady flow energy equation may be written as to give work output.")
disp("w=(h1-h2)-V2^2*10^-3/2 in KJ/kg")
w=(h1-h2)-V2^2*10^-3/2
disp("power output=m*w in KW")
m*w
disp("maximum work for given end states,")
disp("w_max=(h1-To*s1)-(h2+V2^2*10^-3/2-To*s2) in KJ/kg")
w_max=(h1-To*s1)-(h2+V2^2*10^-3/2-To*s2)
w_max=850.38;//approx.
disp("w_max in KW")
w_max=m*w_max
disp("so maximum power output=12755.7 KW")
disp("maximum power that could be obtained from exhaust steam shall depend upon availability with exhaust steam and the dead state.stream availability of exhaust steam,")
disp("A_exhaust=(h2+V^2/2-To*s2)-(ho-To*so)")
disp("=(h2-ho)+V2^2/2-To(s2-so)")
disp("approximately the enthalpy of water at dead state of 1 bar,15 degree celcius can be approximated to saturated liquid at 15 degree celcius")
disp("from steam tables,at 15 degree celcius,ho=62.99 KJ/kg,so=0.2245 KJ/kg K")
ho=62.99;
so=0.2245;
disp("maximum work available from exhaust steam,A_exhaust in KJ/kg")
disp("A_exhaust=(h2-ho)+V2^2*10^-3/2-To*(s2-so)")
A_exhaust=(h2-ho)+V2^2*10^-3/2-To*(s2-so)
A_exhaust=151.1;//approx.
disp("maximum power that could be obtained from exhaust steam=m*A_exhaust in KW")
m*A_exhaust
disp("so maximum power from exhaust steam=2266.5 KW")







