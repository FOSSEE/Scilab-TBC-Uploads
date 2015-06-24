// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 15")
disp("Let us carry out analysis for 1 kg of steam generated in boiler.")
disp("Enthalpy at inlet to HPT,h2=2960.7 KJ/kg,s2=6.3615 KJ/kg K")
h2=2960.7;
s2=6.3615;
disp("state at 3  i.e. exit from HPT can be identified by s2=s3=6.3615 KJ/kg K")
s3=s2;
disp("Let dryness fraction be x3,s3=6.3615=sf at 2 bar+x3*sfg at 2 bar")
disp("so x3=(s3-sf)/sfg")
disp("from stem tables,at 2 bar,sf=1.5301 KJ/kg K,sfg=5.5970 KJ/kg K")
sf=1.5301;
sfg=5.5970;
x3=(s3-sf)/sfg
x3=0.863;//approx.
disp("h3=2404.94 KJ/kg")
h3=2404.94;
disp("If one kg of steam is generated in bolier then at exit of HPT,0.5 kg goes into process heater and 0.5 kg goes into separator")
disp("mass of moisture retained in separator(m)=(1-x3)*0.5 kg")
m=(1-x3)*0.5
disp("Therefore,mass of steam entering LPT(m_LP)=0.5-m kg")
m_LP=0.5-m
disp("Total mass of water entering hot well at 8(i.e. from process heater and drain from separator)=(0.5+0.685)=0.5685 kg")
disp("Let us assume the temperature of water leaving hotwell be T oc.Applying heat balance for mixing;")
disp("(0.5685*4.18*90)+(0.4315*4.18*40)=(1*4.18*T)")
disp("so T=((0.5685*4.18*90)+(0.4315*4.18*40))/4.18 in degree celcius")
T=((0.5685*4.18*90)+(0.4315*4.18*40))/4.18
disp("so temperature of water leaving hotwell=68.425 degree celcius")
disp("Applying heat balanced on trap")
disp("0.5*h7+0.0685*hf at 2 bar=(0.5685*4.18*90)")
disp("so h7=((0.5685*4.18*90)-(0.0685*hf))/0.5 in KJ/kg")
disp("from steam tables,at 2 bar,hf=504.70 KJ/kg")
hf=504.70;
h7=((0.5685*4.18*90)-(0.0685*hf))/0.5
disp("Therefore,heat transferred in process heater=0.5*(h3-h7)in KJ/kg steam generated")
0.5*(h3-h7)
disp("so heat transferred per kg steam generated=1023.175 KJ/kg steam generated")
disp("For state 10 at exit of LPT,s10=s3=s2=6.3615 KJ/kg K")
s10=s3;
disp("Let dryness fraction be x10")
disp("s10=6.3615=sf at 0.075 bar+x10*sfg at 0.075 bar")
disp("from steam tables,at 0.075 bar,sf=0.5764 KJ/kg K,sfg=7.6750 KJ/kg K")
sf=0.5764;
sfg=7.6750;
disp("so x10=(s10-sf)/sfg")
x10=(s10-sf)/sfg
x10=0.754;//approx.
disp("h10=hf at 0.075 bar+x10*hfg at 0.075 bar")
disp("from steam tables,at 0.075 bar,hf=168.79 KJ/kg,hfg=2406.0 KJ/kg")
hf=168.79;
hfg=2406.0;
disp("so h10=hf+x10*hfg in KJ/kg ")
h10=hf+x10*hfg 
disp("net work output,neglecting pump work per kg of steam generated,")
disp("w_net=(h2-h3)*1+0.4315*(h3-h10) in KJ/kg steam generated")
w_net=(h2-h3)*1+0.4315*(h3-h10) 
disp("Heat added in boiler per kg steam generated,q_add=(h2-h1)in KJ/kg")
q_add=(h2-4.18*68.425)
disp("thermal efficiency=w_net/q_add")
w_net/q_add
disp("in percentage")
w_net*100/q_add
disp("so Thermal efficiency=27.58%")
