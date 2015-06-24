// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 9")
P=15*10^3;//turbine output in KW
disp("At inlet to first turbine stage,h2=3230.9 KJ/kg,s2=6.9212 KJ/kg K")
h2=3230.9;
s2=6.9212;
disp("For ideal expansion process,s2=s3")
s3=s2;
disp("By interpolation,T3=190.97 degree celcius from superheated steam tables at 6 bar,h3=2829.63 KJ/kg")
T3=190.97;
h3=2829.63;
disp("actual stste at exit of first stage,h3_a=h2-0.8*(h2-h3) in KJ/kg")
h3_a=h2-0.8*(h2-h3)
disp("actual state 3_a shall be at 232.78 degree celcius,6 bar,so s3_a=7.1075 KJ/kg K")
s3_a=7.1075;
disp("for second stage,s3_a=s4;By interpolation,s4=7.1075=sf at 1 bar+x4*sfg at 1 bar")
s4=7.1075;
disp("from steam tables,at 1 bar,sf=1.3026 KJ/kg K,sfg=6.0568 KJ/kg K")
sf=1.3026;
sfg=6.0568;
disp("so x4=(s4-sf)/sfg")
x4=(s4-sf)/sfg
x4=0.958;//approx.
disp("h4=hf at 1 bar+x4*hfg at 1 bar in KJ/kg")
disp("from steam tables,at 1 bar,hf=417.46 KJ/kg,hfg=2258.0 KJ/kg")
hf=417.46;
hfg=2258.0;
h4=hf+x4*hfg
disp("actual enthalpy at exit from second stage,h4_a=h3_a-.8*(h3_a-h4) in KJ/kg")
h4_a=h3_a-.8*(h3_a-h4)
disp("actual dryness fraction,x4_a=>h4_a=hf at 1 bar+x4_a*hfg at 1 bar")
disp("so x4_a=(h4_a-hf)/hfg")
x4_a=(h4_a-hf)/hfg
disp("x4_a=0.987,actual entropy,s4_a=7.2806 KJ/kg K")
s4_a=7.2806;
disp("for third stage,s4_a=7.2806=sf at 0.075 bar+x5*sfg at 0.075 bar")
disp("from steam tables,at 0.075 bar,sf=0.5764 KJ/kg K,sfg=7.6750 KJ/kg K")
sf=0.5764;
sfg=7.6750;
disp("so x5=(s4_a-sf)/sfg")
x5=(s4_a-sf)/sfg
x5=0.8735;//approx.
disp("h5=2270.43 KJ/kg")
h5=2270.43;
disp("actual enthalpy at exit from third stage,h5_a=h4_a-0.8*(h4_a-h5)in KJ/kg")
h5_a=h4_a-0.8*(h4_a-h5)
disp("Let mass of steam bled out be m1 and m2 kg at 6 bar,1 bar respectively.")
disp("By heat balance on first closed feed water heater,(see schematic arrangement)")
disp("h11=hf at 6 bar=670.56 KJ")
h11=670.56;
disp("m1*h3_a+h10=m1*h11+4.18*150")
disp("(m1*2829.63)+h10=(m1*670.56)+627")
disp("h10+2159.07*m1=627")
disp("By heat balance on second closed feed water heater,(see schematic arrangement)")
disp("h7=hf at 1 bar=417.46 KJ/kg")
h7=417.46;
disp("m2*h4+(1-m1-m2)*4.18*38=(m1+m2)*h7+4.18*95*(1-m1-m2)")
disp("m2*2646.4+(1-m1-m2)*158.84=((m1+m2)*417.46)+(397.1*(1-m1-m2))")
disp("m2*2467.27-m1*179.2-238.26=0")
disp("heat balance at point of mixing,")
disp("h10=(m1+m2)*h8+(1-m1-m2)*4.18*95")
disp("neglecting pump work,h7=h8")
disp("h10=m2*417.46+(1-m1-m2)*397.1")
disp("substituting h10 and solving we get,m1=0.1293 kg and m2=0.1059 kg/kg of steam generated")
m1=0.1293;
m2=0.1059;
disp("Turbine output per kg of steam generated,Wt=(h2-h3_a)+(1-m1)*(h3_a-h4_a)+(1-m1-m2)*(h4_a-h5_a)in KJ/kg of steam generated")
Wt=(h2-h3_a)+(1-m1)*(h3_a-h4_a)+(1-m1-m2)*(h4_a-h5_a)
disp("Rate of steam generation required=P/Wt in kg/s")
P/Wt
disp("in kg/hr")
P*3600/Wt
disp("capacity of drain pump i.e. FP shown in layout=(m1+m2)*69192 in kg/hr")
(m1+m2)*69192
disp("so capacity of drain pump=16273.96 kg/hr")



