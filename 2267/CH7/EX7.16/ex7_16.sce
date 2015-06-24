//Part A Chapter 7 Example 16
clc;
clear;
close;
mg=40;//kg
mf=2.2;//kg
p1=1.47;//MPa
T=120;//degree C
p2=107.88;//kPa
cv=2.09;//kJ/kg.K
Td=T-101.8;//degree C(DegreeSuperHeat)
hf=2673.95;//kJ/kg
h=hf+Td*cv;//kJ/kg
hf2=918.926;//kJ/kg
hfg2=1864.28;//kJ/kg
x2=(h-hf2)/hfg2;//dryness fraction
x1=(mg-mf)/mg;//dryness fraction
x=x1*x2;//overall dryness fraction
disp("Dryness fraction is "+string(x));
