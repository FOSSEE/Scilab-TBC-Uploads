// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 3")
disp("from steam tables,h2=hg_40bar=3092.5 KJ/kg")
h2=3092.5;
disp("s2=sg_40bar=6.5821 KJ/kg K")
s2=6.5821;
disp("h4=hf_0.05bar=137.82 KJ/kg,hfg=2423.7 KJ/kg ")
h4=137.82;
hfg=2423.7;
disp("s4=sf_0.05bar=0.4764 KJ/kg K,sfg=7.9187 KJ/kg K")
s4=0.4764;
sfg=7.9187;
disp("v4=vf_0.05bar=0.001005 m^3/kg")
v4=0.001005;
disp("let the dryness fraction at state 3 be x3,")
disp("for ideal process,2-3,s2=s3")
s3=s2;
disp("s2=s3=6.5821=sf_0.05bar+x3*sfg_0.05bar")
disp("so x3=(s2-s4)/(sfg)")
x3=(s2-s4)/(sfg)
x3=0.7711;//approx.
disp("h3=hf_0.05bar+x3*hfg_0.05bar in KJ/kg")
h3=h4+x3*hfg
disp("for pumping process,")
disp("h1-h4=v4*deltap=v4*(p1-p4)")
disp("so h1=h4+v4*(p1-p4) in KJ/kg")
p1=40*100;//pressure of steam enter in turbine in mPa
p4=0.05*100;//pressure of steam leave turbine in mPa
h1=h4+v4*(p1-p4)
disp("pump work per kg of steam=(h1-h4) in KJ/kg")
(h1-h4)
disp("net work per kg of steam =(expansion work-pump work)per kg of steam")
disp("=(h2-h3)-(h1-h4) in KJ/kg)")
(h2-h3)-(h1-h4)
disp("cycle efficiency=net work/heat added")
((h2-h3)-(h1-h4))/(h2-h1)
disp("in percentage")
((h2-h3)-(h1-h4))*100/(h2-h1)
disp("so net work per kg of steam=1081.74 KJ/kg")
disp("cycle efficiency=36.67%")
disp("pump work per kg of steam=4.02 KJ/kg")
