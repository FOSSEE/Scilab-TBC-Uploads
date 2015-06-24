// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 18")
v=0.4;//volume of air in part A and part B in m^3
p1=10*10^5;//initial pressure of steam in pa
p2=15*10^5;//final pressure of steam in pa
disp("here heat addition to part B shall cause evaporation of water and subsequently the rise in pressure.")
disp("final,part B has dry steam at 15 bar.In order to have equilibrium the part A shall also have pressure of 15 bar.thus heat added")
disp("Q=v*(p2-p1)/1000in KJ")
Q=v*(p2-p1)/1000
disp("final enthalpy of dry steam at 15 bar,h2=hg_15bar")
disp("h2=2792.2 KJ/kg from steam table")
h2=2792.2;
disp("let initial dryness fraction be x1,initial enthalpy,")
disp("h1=hf_10bar+x1*hfg_10bar.........eq1")
disp("here at 10 bar,hf_10bar=762.83 KJ/kg,hfg_10bar=2015.3 KJ/kg from steam table")
hf_10bar=762.83;
hfg_10bar=2015.3;
disp("also heat balance yields,")
disp("h1+Q=h2")
disp("so h1=h2-Q in KJ/kg")
h1=h2-Q
disp("so by eq 1=>x1=(h1-hf_10bar)/hfg_10bar")
x1=(h1-hf_10bar)/hfg_10bar
disp("heat added(Q)in KJ")
Q
disp("and initial quality(x1)")
x1
