// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 13")
disp("For mercury cycle,")
disp("insentropic heat drop=349-234.5 in KJ/kg Hg")
349-234.5
disp("actual heat drop=0.85*114.5 in KJ/kg Hg")
0.85*114.5
disp("Heat rejected in condenser=(349-97.325-35)in KJ/kg")
(349-97.325-35)
disp("heat added in boiler=349-35 in KJ/kg")
349-35
disp("For steam cycle,")
disp("Enthalpy of steam generated=h at 40 bar,0.98 dry=2767.13 KJ/kg")
h=2767.13;
disp("Enthalpy of inlet to steam turbine,h2=h at 40 bar,450oc=3330.3 KJ/kg")
h2=3330.3;
disp("Entropy of steam at inlet to steam turbine,s2=6.9363 KJ/kg K")
s2=6.9363;
disp("Therefore,heat added in condenser of mercury cycle=h at 40 bar,0.98 dry-h_feed at 40 bar in KJ/kg")
h-4.18*150
disp("Therefore,mercury required per kg of steam=2140.13/heat rejected in condenser in kg per kg of steam")
2140.13/216.675
disp("for isentropic expansion,s2=s3=s4=s5=6.9363 KJ/kg K")
s3=s2;
s4=s3;
s5=s4;
disp("state 3 lies in superheated region,by interpolation the state can be given by,temperature 227.07oc at 8 bar,h3=2899.23 KJ/kg")
h3=2899.23;
disp("state 4 lies in wet region,say with dryness fraction x4")
disp("s4=6.9363=sf at 1 bar+x4*sfg at 1 bar")
disp("so x4=(s4-sf)/sfg")
disp("from steam tables,at 1 bar,sf=1.3026 KJ/kg K,sfg=6.0568 KJ/kg K")
sf=1.3026;
sfg=6.0568;
x4=(s4-sf)/sfg
x4=0.93;//approx.
disp("h4=hf at 1 bar+x4*hfg at 1 bar in KJ/kg")
disp("from steam tables,at 1 bar,hf=417.46 KJ/kg,hfg=2258.0 KJ/kg")
hf=417.46;
hfg=2258.0;
h4=hf+x4*hfg
disp("Let state 5 lie in wet region with dryness fraction x5,")
disp("s5=6.9363=sf at 0.075 bar+x5*sfg at 0.075 bar")
disp("so x5=(s5-sf)/sfg")
disp("from steam tables,at 0.075 bar,sf=0.5764 KJ/kg K,sfg=7.6750 KJ/kg K")
sf=0.5764;
sfg=7.6750;
x5=(s5-sf)/sfg
x5=0.828;//approx.
disp("h5=hf+x5*hfg in KJ/kg")
disp("from steam tables,at 0.075 bar,hf=168.79 KJ/kg,hfg=2406.0 KJ/kg")
hf=168.79;
hfg=2406.0;
h5=hf+x5*hfg
disp("Let mass of steam bled at 8 bar and 1 bar be m1 and m2 per kg of steam generated.")
disp("h7=h6+v6*(1-0.075)*10^2 in KJ/kg")
disp("from steam tables,at 0.075 bar,h6=hf=168.79 KJ/kg,v6=vf=0.001008 m^3/kg")
h6=168.79;
v6=0.001008;
h7=h6+v6*(1-0.075)*10^2
disp("h9=hf at 1 bar=417.46 KJ/kg,h13=hf at 8 bar=721.11 KJ/kg")
h9=417.46;
h13=721.11;
disp("Applying heat balance on CFWH1,T1=150oc and also T15=150oc")
T1=150;
T15=150;
disp("m1*h3+(1-m1)*h12=m1*h13+(4.18*150)*(1-m1)")
disp("(m1-2899.23)+(1-m1)*h12=(m1*721.11)+627*(1-m1)")
disp("Applying heat balance on CFEH2,T11=90oc")
T11=90;
disp("m2*h4+(1-m1-m2)*h7=m2*h9+(1-m1-m2)*4.18*90")
disp("(m2*2517.4)+(1-m1-m2)*168.88=(m2*417.46)+376.2*(1-m1-m2)")
disp("Heat balance at mixing between CFWH1 and CFWH2,")
disp("(1-m1-m2)*4.18*90+m2*h10=(1-m1)*h12")
disp("376.2*(1-m1-m2)+m2*h10=(1-m1)*h12")
disp("For pumping process,9-10,h10=h9+v9*(8-1)*10^2 in KJ/kg")
disp("from steam tables,h9=hf at 1 bar=417.46 KJ/kg,v9=vf at 1 bar=0.001043 m^3/kg")
h9=417.46;
v9=0.001043;
h10=h9+v9*(8-1)*10^2 
disp("solving above equations,we get")
disp("m1=0.102 kg per kg steam generated")
disp("m2=0.073 kg per kg steam generated")
m1=0.102;
m2=0.073;
disp("pump work in process 13-14,h14-h13=v13*(40-8)*10^2")
disp("so h14-h13 in KJ/kg")
v13=0.001252;
v13*(40-8)*10^2
disp("Total heat supplied(q_add)=(9.88*314)+(3330.3-2767.13) in KJ/kg of steam")
q_add=(9.88*314)+(3330.3-2767.13)
disp("net work per kg of steam,w_net=w_mercury+w_steam")
disp("w_net=(9.88*97.325)+{(h2-h3)+(1-m1)*(h3-h4)+(1-m1-m2)*(h4-h5)-(1-m1-m2)*(h4-h6)-m2*(h10-h9)-m1*(h14-h13)} in KJ/kg")
w_net=(9.88*97.325)+{(h2-h3)+(1-m1)*(h3-h4)+(1-m1-m2)*(h4-h5)-(1-m1-m2)*(h7-h6)-m2*(h10-h9)-m1*4.006}
disp("thermal efficiency of binary vapour cycle=w_net/q_add")
w_net/q_add
disp("in percentage")
w_net*100/q_add
disp("so thermal efficiency=55.36%")
disp("NOTE=>In this question there is some mistake in formula used for w_net which is corrected above.")
