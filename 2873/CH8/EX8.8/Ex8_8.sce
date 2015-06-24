// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 8")
T_cond=115;//condensate temperature in degree celcius
Cp=4.18;//specific heat at constant pressure in KJ/kg K
P=30*10^3;//actual alternator output in KW
n_boiler=0.9;//boiler efficiency
n_alternator=0.98;//alternator efficiency
disp("from steam tables,at state 2,h2=3301.8 KJ/kg,s2=6.7193 KJ/kg K")
h2=3301.8;
s2=6.7193;
disp("h5=hf at 0.05 bar=137.82 KJ/kg,v5= vf at 0.05 bar=0.001005 m^3/kg")
h5=137.82;
v5=0.001005;
disp("Let mass of steam bled for feed heating be m kg/kg of steam generated in boiler.Let us also assume that condensate leaves closed feed water heater as saturated liquid i.e")
disp("h8=hf at 3 bar=561.47 KJ/kg")
h8=561.47;
disp("for process 2-3-4,s2=s3=s4=6.7193 KJ/kg K")
s3=s2;
s4=s3;
disp("Let dryness fraction at state 3 and state 4 be x3 and x4 respectively.")
disp("s3=6.7193=sf at 3 bar+x3* sfg at 3 bar")
disp("from steam tables,sf=1.6718 KJ/kg K,sfg=5.3201 KJ/kg K")
sf_3bar=1.6718;
sfg_3bar=5.3201;
disp("so x3=(s3-sf_3bar)/sfg_3bar")
x3=(s3-sf_3bar)/sfg_3bar
x3=0.949;//approx.
disp("s4=6.7193=sf at 0.05 bar+x4* sfg at 0.05 bar")
disp("from steam tables,at 0.05 bar,sf=0.4764 KJ/kg K,sfg=7.9187 KJ/kg K")
sf=0.4764;
sfg=7.9187;
disp("so x4=(s4-sf)/sfg")
x4=(s4-sf)/sfg
x4=0.788;//approx.
disp("thus,h3=hf at 3 bar+x3* hfg at 3 bar in KJ/kg")
disp("here  from steam tables,at 3 bar,hf_3bar=561.47 KJ/kg,hfg_3bar=2163.8 KJ/kg K")
hf_3bar=561.47;
hfg_3bar=2163.8;
h3=hf_3bar+x3*hfg_3bar 
disp("h4=hf at 0.05 bar+x4*hfg at 0.05 bar in KJ/kg")
disp("from steam tables,at 0.05 bar,hf=137.82 KJ/kg,hfg=2423.7 KJ/kg")
hf=137.82;
hfg=2423.7;
h4=hf+x4*hfg
disp("assuming process across trap to be of throttling type so,h8=h9=561.47 KJ/kg.Assuming v5=v6,")
h9=h8;
v6=v5;
disp("pumping work=(h7-h6)=v5*(p1-p5)in KJ/kg")
p1=60;//pressure of steam in high pressure turbine in bar
p5=0.05;//pressure of steam in low pressure turbine in bar
v5*(p1-p5)*100
disp("for mixing process between condenser and feed pump,")
disp("(1-m)*h5+m*h9=1*h6")
disp("h6=m(h9-h5)+h5")
disp("we get,h6=137.82+m*423.65")
disp("therefore h7=h6+6.02=143.84+m*423.65")
disp("Applying energy balance at closed feed water heater;")
disp("m*h3+(1-m)*h7=m*h8+(Cp*T_cond)")
disp("so (m*2614.92)+(1-m)*(143.84+m*423.65)=m*561.47+480.7")
disp("so m=0.144 kg")
m=0.144;
h6=137.82+m*423.65;
h7=143.84+m*423.65;
disp("steam bled for feed heating=0.144 kg/kg steam generated")
disp("The net power output,W_net=(h2-h3)+(1-m)*(h3-h4)-(1-m)*(h7-h6) in KJ/kg steam generated")
W_net=(h2-h3)+(1-m)*(h3-h4)-(1-m)*(h7-h6)
disp("mass of steam required to be generated=in kg/s")
P/(n_alternator*W_net)
disp("or in kg/hr")
26.23*3600
disp("so capacity of boiler required=94428 kg/hr")
disp("overall thermal efficiency=W_net/Q_add")
disp("here Q_add=(h2-h1)/n_boiler in KJ/kg")
Q_add=(h2-Cp*T_cond)/n_boiler 
disp("overall thermal efficiency=")
W_net/Q_add
disp("in percentage")
W_net*100/Q_add
disp("so overall thermal efficiency=37.24%")
