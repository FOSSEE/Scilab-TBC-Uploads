// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 11")
disp("Enthalpy of steam entering ST1,h2=3308.6 KJ/kg,s2=6.3443 KJ/kg K")
h2=3308.6;
s2=6.3443;
disp("for isentropic expansion 2-3-4-5,s2=s3=s4=s5")
s3=s2;
s4=s3;
s5=s4;
disp("Let dryness fraction of states 3,4 and 5 be x3,x4 and x5")
disp("s3=6.3443=sf at 10 bar+x3*sfg at 10 bar")
disp("so x3=(s3-sf)/sfg")
disp("from steam tables,at 10 bar,sf=2.1387 KJ/kg K,sfg=4.4478 KJ/kg K")
sf=2.1387;
sfg=4.4478;
x3=(s3-sf)/sfg
x3=0.945;//approx.
disp("h3=hf+x3*hfg in KJ/kg")
disp("from steam tables,hf=762.81 KJ/kg,hfg=2015.3 KJ/kg")
hf=762.81;
hfg=2015.3;
h3=hf+x3*hfg
disp("s4=6.3443=sf at 1.5 bar+x4*sfg at 1.5 bar")
disp("so x4=(s4-sf)/sfg")
disp("from steam tables,at 1.5 bar,sf=1.4336 KJ/kg K,sfg=5.7897 KJ/kg K")
sf=1.4336;
sfg=5.7897;
x4=(s4-sf)/sfg
x4=0.848;//approx.
disp("so h4=hf+x4*hfg in KJ/kg")
disp("from steam tables,at 1.5 bar,hf=467.11 KJ/kg,hfg=2226.5 KJ/kg")
hf=467.11;
hfg=2226.5;
h4=hf+x4*hfg
disp("s5=6.3443=sf at 0.05 bar+x5*sfg at 0.05 bar")
disp("so x5=(s5-sf)/sfg")
disp("from steam tables,at 0.05 bar,sf=0.4764 KJ/kg K,sfg=7.9187 KJ/kg K")
sf=0.4764;
sfg=7.9187;
x5=(s5-sf)/sfg
x5=0.739;//approx.
disp("h5=hf+x5*hfg in KJ/kg")
disp("from steam tables,at 0.05 bar,hf=137.82 KJ/kg,hfg=2423.7 KJ/kg")
hf=137.82;
hfg=2423.7;
h5=hf+x5*hfg 
disp("h6=hf at 0.05 bar=137.82 KJ/kg")
h6=137.82;
disp("v6=vf at 0.05 bar=0.001005 m^3/kg")
v6=0.001005;
disp("h7=h6+v6*(1.5-0.05)*10^2 in KJ/kg")
h7=h6+v6*(1.5-0.05)*10^2
disp("h8=hf at 1.5 bar=467.11 KJ/kg")
h8=467.11; 
disp("v8=0.001053 m^3/kg=vf at 1.5 bar")
v8=0.001053;
disp("h9=h8+v8*(150-1.5)*10^2 in KJ/kg")
h9=h8+v8*(150-1.5)*10^2
disp("h10=hf at 150 bar=1610.5 KJ/kg")
h10=1610.5; 
disp("v10=0.001658 m^3/kg=vf at 150 bar")
v10=0.001658;
disp("h12=h10+v10*(150-10)*10^2 in KJ/kg")
h12=h10+v10*(150-10)*10^2
disp("Let mass of steam bled out at 10 bar,1.5 bar be m1 and m2 per kg of steam generated.")
disp("Heat balance on closed  feed water heater yields,")
disp("m1*h3+(1-m)*h9=m1*h10+(1-m1)*4.18*150")
disp("so m1=(4.18*150-h9)/(h3-h9-h10+4.18*150)in kg/kg of steam generated.")
m1=(4.18*150-h9)/(h3-h9-h10+4.18*150)
disp("heat balance on open feed water can be given as under,")
disp("m2*h4+(1-m1-m2)*h7=(1-m1)*h8")
disp("so m2=((1-m1)*(h8-h7))/(h4-h7)in kg/kg of steam")
m2=((1-m1)*(h8-h7))/(h4-h7)
disp("for mass flow rate of 300 kg/s=>m1=36 kg/s,m2=39 kg/s")
disp("For mixing after closed feed water heater,")
disp("h1=(4.18*150)*(1-m1)+m1*h12 in KJ/kg")
h1=(4.18*150)*(1-m1)+m1*h12
disp("Net work output per kg of steam generated=W_ST1+W_ST2+W_ST3-{W_CEP+W_FP+W_FP2}")
disp("W_net=(h2-h3)+(1-m1)*(h3-h4)+(1-m1-m2)*(h4-h5)-{(1-m1-m2)*(h7-h6)+(1-m1)*(h9-h8)+(m1*(h12-h10))}in KJ/kg of steam generated.")
W_net=(h2-h3)+(1-m1)*(h3-h4)+(1-m1-m2)*(h4-h5)-{(1-m1-m2)*(h7-h6)+(1-m1)*(h9-h8)+(m1*(h12-h10))}
disp("heat added per kg of steam generated,q_add=(h2-h1) in KJ/kg")
q_add=(h2-h1)
disp("cycle thermal efficiency,n=W_net/q_add")
n=W_net/q_add
disp("in percentage")
n=n*100
disp("Net power developed in KW=1219*300 in KW")
1219*300
disp("cycle thermal efficiency=47.6%")
disp("Net power developed=365700 KW")
