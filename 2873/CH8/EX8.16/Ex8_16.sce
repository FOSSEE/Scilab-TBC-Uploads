// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 16")
m=35;//mass flow rate in kg/s
disp("from steam tables,h1=3530.9 KJ/kg,s1=6.9486 KJ/kg K")
h1=3530.9;
s1=6.9486;
disp("Assuming isentropic expansion in nozzle,s1=s2=6.9486")
s2=s1;
disp("Letdryness fraction at state 2,x2=0.864")
disp("s2=sf at 0.2 bar+x2*sfg at 0.2 bar")
disp("from steam tables,sf=0.8320 KJ/kg K,sfg=7.0766 KJ/kg K")
sf=0.8320;
sfg=7.0766;
disp("so x2=(s2-sf)/sfg")
x2=(s2-sf)/sfg
x2=0.864;//approx.
disp("hence,h2=hf at 0.2 bar+x2*hfg at 0.2 bar in KJ/kg")
disp("from steam tables,hf at 0.2 bar=251.4 KJ/kg,hfg at 0.2 bar=2358.3 KJ/kg")
hf=251.4;
hfg=2358.3;
h2=hf+x2*hfg
disp("considering pump work to be of isentropic type,deltah_34=v3*deltap_34")
disp("from steam table,v3=vf at 0.2 bar=0.001017 m^3/kg")
v3=0.001017;
disp("or deltah_34=v3*(p3-p4)in KJ/kg")
p3=70;//;pressure of steam entering turbine in bar
p4=0.20;//condenser pressure in bar
deltah_34=v3*(p3-p4)*100
disp("pump work,Wp=deltah_34 in KJ/kg")
Wp=deltah_34
disp("turbine work,Wt=deltah_12=(h1-h2)in KJ/kg")
Wt=(h1-h2)
disp("net work(W_net)=Wt-Wp in KJ/kg")
W_net=Wt-Wp
disp("power produced(P)=mass flow rate*W_net in KJ/s")
P=m*W_net
disp("so net power=43.22 MW")
disp("heat supplied in boiler(Q)=(h1-h4) in KJ/kg")
disp("enthalpy at state 4,h4=h3+deltah_34 in KJ/kg")
h3=hf;
h4=h3+deltah_34 
disp("total heat supplied to boiler(Q)=m*(h1-h4)in KJ/s")
Q=m*(h1-h4)
disp("thermal efficiency=net work/heat supplied=W_net/Q")
P/Q
disp("in percentage")
P*100/Q
disp("so thermal efficiency=37.73%")
