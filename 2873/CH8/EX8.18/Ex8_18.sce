// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 18")
W_net=50*10^3;//net output of turbine in KW
disp("from steam tables,at inlet to first stage of turbine,h1=h at 100 bar,500oc=3373.7 KJ/kg,s1=s at 100 bar,500oc=6.5966 KJ/kg")
h1=3373.7;
s1=6.5966;
disp("Due to isentropic expansion,s1=s6=s2 and s3=s8=s4")
s2=s1;
s6=s2;
disp("State at 6 i.e bleed state from HP turbine,temperature by interpolation from steam table =261.6oc.")
disp("At inlet to second stage of turbine,h6=2930.572 KJ/kg")
h6=2930.572;
disp("h3=h at 10 bar,500oc=3478.5 KJ/kg,s3=s at 10 bar,500oc=7.7622 KJ/kg K")
h3=3478.5;
s3=7.7622;
s4=s3;
s8=s4;
disp("At exit from first stage of turbine i.e. at 10 bar and entropy of 6.5966 KJ/kg K,Temperature by interpolation from steam table at 10 bar and entropy of 6.5966 KJ/kg K")
disp("T2=181.8oc,h2=2782.8 KJ/kg")
T2=181.8;
h2=2782.8;
disp("state at 8,i.e bleed state from second stage of expansion,i.e at 4 bar and entropy of 7.7622 KJ/kg K,Temperature by interpolation from steam table,T8=358.98oc=359oc")
T8=359;
disp("h8=3188.7 KJ/kg")
h8=3188.7;
disp("state at 4 i.e. at condenser pressure of 0.1 bar and entropy of 7.7622 KJ/kg K,the state lies in wet region.So let the dryness fraction be x4.")
disp("s4=sf at 0.1 bar+x4*sfg at 0.1 bar")
disp("from steam tables,at 0.1 bar,sf=0.6493 KJ/kg K,sfg=7.5009 KJ/kg K")
sf=0.6493;
sfg=7.5009; 
disp("so x4=(s4-sf)/sfg")
x4=(s4-sf)/sfg
x4=0.95;//approx.
disp("h4=hf at 0.1 bar+x4*hfg at 0.1 bar in KJ/kg ")
disp("from steam tables,at 0.1 bar,hf=191.83 KJ/kg,hfg=2392.8 KJ/kg")
hf=191.83;
hfg=2392.8;
h4=hf+x4*hfg
disp("given,h4=2464.99 KJ/kg,h11=856.8 KJ/kg,h9=hf at 4 bar=604.74 KJ/kg")
h4=2464.99;
h11=856.8;
h9=604.74;
disp("considering pump work,the net output can be given as,")
disp("W_net=W_HPT+W_LPT-(W_CEP+W_FP)")
disp("where,W_HPT={(h1-h6)+(1-m6)*(h6-h2)}per kg of steam from boiler.")
disp("W_LPT={(1-m6)+(h3-h8)*(1-m6-m8)*(h8-h4)}per kg of steam from boiler.")
disp("for closed feed water heater,energy balance yields;")
disp("m6*h6+h10=m6*h7+h11")
disp("assuming condensate leaving closed feed water heater to be saturated liquid,")
disp("h7=hf at 20 bar=908.79 KJ/kg")
h7=908.79; 
disp("due to throttline,h7=h7_a=908.79 KJ/kg")
h7_a=h7;
disp("for open feed water heater,energy balance yields,")
disp("m6*h7_a+m8*h8+(1-m6-m8)*h5=h9")
disp("for condensate extraction pump,h5-h4_a=v4_a*deltap")
disp("h5-hf at 0.1 bar=vf at 0.1 bar*(4-0.1)*10^2 ")
disp("from steam tables,at 0.1 bar,hf=191.83 KJ/kg,vf=0.001010 m^3/kg")
hf=191.83;
vf=0.001010; 
disp("so h5=hf+vf*(4-0.1)*10^2 in KJ/kg")
h5=hf+vf*(4-0.1)*10^2
disp("for feed pump,h10-h9=v9*deltap")
disp("h10=h9+vf at 4 bar*(100-4)*10^2 in KJ/kg")
disp("from steam tables,at 4 bar,hf=604.74 KJ/kg,vf=0.001084 m^3/kg ")
hf=604.74;
vf=0.001084;
h10=h9+vf*(100-4)*10^2
disp("substituting in energy balance upon closed feed water heater,")
disp("m6=(h11-h10)/(h6-h7)in kg per kg of steam from boiler")
m6=(h11-h10)/(h6-h7)
disp("substituting in energy balance upon feed water heater,")
disp("m8=(h9-m6*h7_a+m6*h5-h5)/(h8-h5)in kg per kg of steam from boiler")
m8=(h9-m6*h7_a+m6*h5-h5)/(h8-h5)
disp("Let the mass of steam entering first stage of turbine be m kg,then")
disp("W_HPT=m*{(h1-h6)+(1-m6)*(h6-h2)}")
disp("W_HPT/m=")
{(h1-h6)+(1-m6)*(h6-h2)}
disp("so W_HPT=m*573.24 KJ")
disp("also,W_LPT={(1-m6)*(h3-h8)+(1-m6-m8)*(h8-h4)}per kg of steam from boiler")
disp("W_LPT/m=")
{(1-m6)*(h3-h8)+(1-m6-m8)*(h8-h4)}
disp("so W_LPT=m*813.42 KJ")
disp("pump works(negative work)")
disp("W_CEP=m*(1-m6-m8)*(h5-h4_a)")
h4_a=191.83;//h4_a=hf at 0.1 bar
disp("W_CEP/m=")
(1-m6-m8)*(h5-h4_a)
disp("so W_CEP=m* 0.304")
disp("W_FP=m*(h10-h9)")
disp("W_FP/m=")
(h10-h9)
disp("so W_FP=m*10.41")
disp("net output,")
disp("W_net=W_HPT+W_LPT-W_CEP-W_FP ")
disp("so 50*10^3=(573.24*m+813.42*m-0.304*m-10.41*m)")
disp("so m=W_net/(573.24+813.42-0.304-10.41)in kg/s")
m=W_net/(573.24+813.42-0.304-10.41)
disp("heat supplied in boiler,Q_add=m*(h1-h11) in KJ/s")
Q_add=m*(h1-h11)
disp("Thermal efficenncy=W_net/Q_add")
W_net/Q_add
disp("in percentage")
W_net*100/Q_add
disp("so mass of steam bled at 20 bar=0.119 kg per kg of steam entering first stage")
disp("mass of steam bled at 4 bar=0.109 kg per kg of steam entering first stage")
disp("mass of steam entering first stage=36.33 kg/s")
disp("thermal efficiency=54.66%")
disp("NOTE=>In this question there is some caclulation mistake while calculating m6 in book,which is corrected above so some answers may vary.")
