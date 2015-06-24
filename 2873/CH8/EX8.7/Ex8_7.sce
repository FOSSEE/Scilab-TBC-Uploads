// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 7")
disp("from steam tables,")
disp("h2=h at 50 bar,500oc=3433.8 KJ/kg,s2=s at 50 bar,500oc=6.9759 KJ/kg K")
h2=3433.8;
s2=6.9759;
disp("s3=s2=6.9759 KJ/kg K")
s3=s2;
disp("by interpolation from steam tables,")
disp("T3=183.14oc at 5 bar,h3=2818.03 KJ/kg,h4= h at 5 bar,400oc=3271.9 KJ/kg,s4= s at 5 bar,400oc=7.7938 KJ/kg K")
T3=183.14;
h3=2818.03;
h4=3271.9;
s4=7.7938;
disp("for expansion process 4-5,s4=s5=7.7938 KJ/kg K")
s5=s4;
disp("let dryness fraction at state 5 be x5")
disp("s5=sf at 0.05 bar+x5*sfg at 0.05 bar")
disp("from steam tables,at 0.05 bar,sf=0.4764 KJ/kg K,sfg=7.9187 KJ/kg K")
sf=0.4764;
sfg=7.9187;
disp("so x5=(s5-sf)/sfg")
x5=(s5-sf)/sfg
x5=0.924;//approx.
disp("h5=hf at 0.05 bar+x5*hfg at 0.05 bar in KJ/kg")
disp("from steam tables,hf at 0.05 bar=137.82 KJ/kg,hfg at 0.05 bar=2423.7 KJ/kg")
hf=137.82;
hfg=2423.7;
h5=hf+x5*hfg 
disp("h6=hf at 0.05 bar=137.82 KJ/kg")
h6=137.82;
disp("v6=vf at 0.05 bar=0.001005 m^3/kg")
v6=0.001005;
disp("for process 6-1 in feed pump,h1=h6+v6*(p1-p6) in KJ/kg")
p1=50;//steam generation pressure in bar
p6=0.05;//steam entering temperature in turbine in bar
h1=h6+v6*(p1-p6)*100
disp("cycle efficiency=W_net/Q_add")
disp("Wt=(h2-h3)+(h4-h5) in KJ/kg")
Wt=(h2-h3)+(h4-h5)
disp("W_pump=(h1-h6)in KJ/kg")
W_pump=(h1-h6)
disp("W_net=Wt-W_pump in KJ/kg")
W_net=Wt-W_pump
disp("Q_add=(h2-h1) in KJ/kg")
Q_add=(h2-h1)
disp("cycle efficiency=")
W_net/Q_add
disp("in percentage")
W_net*100/Q_add
disp("we know ,1 hp=0.7457 KW")
disp("specific steam consumption=0.7457*3600/W_net in kg/hp hr")
0.7457*3600/W_net
disp("work ratio=net work/positive work=W_net/Wt")
W_net/Wt
disp("so cycle efficiency=45.74%,specific steam consumption =1.78 kg/hp hr,work ratio=0.9967")







