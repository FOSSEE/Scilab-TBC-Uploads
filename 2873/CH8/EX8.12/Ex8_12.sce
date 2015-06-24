// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 12")
P=100*10^3;//net power output in KW
disp("At inlet to HPT,h2=3373.7 KJ/kg,s2=6.5966 KJ/kg K")
h2=3373.7;
s2=6.5966;
disp("For isentropic expansion between 2-3-4-5,s2=s3=s4=s5")
s3=s2;
s4=s3;
s5=s4;
disp("state 3 lies in superheated region as s3>sg at 20 bar.By interpolation from superheated steam table,T3=261.6oc.Enthalpy at 3,h3=2930.57 KJ/kg")
T3=261.6;
h3=2930.57;
disp("since s4<sg at 4 bar so state 4 and 5 lies in wet region.")
disp("Let dryness fraction at state 4 ans 5 be x4 and x5.")
disp("s4=6.5966=sf at 4 bar+x4*sfg at 4 bar")
disp("from steam tables,at 4 bar,sf=1.7766 KJ/kg K,sfg=5.1193 KJ/kg K")
sf=1.7766;
sfg=5.1193;
disp("x4=(s4-sf)/sfg")
x4=(s4-sf)/sfg
x4=0.941;//approx.
disp("h4=hf at 4 bar+x4*hfg at 4 bar in KJ/kg")
disp("from steam tables,at 4 bar,hf=604.74 KJ/kg,hfg=2133.8 KJ/kg")
hf=604.74;
hfg=2133.8;
h4=hf+x4*hfg
disp("for state 5,")
disp("s5=6.5966=sf at 0.075 bar+x5*sfg at 0.075 bar")
disp("from steam tables,at 0.075 bar,sf=0.5764 KJ/kg K,sfg=7.6750 KJ/kg K")
sf=0.5764;
sfg=7.6750;
disp("x5=(s5-sf)/sfg")
x5=(s5-sf)/sfg
x5=0.784;//approx.
disp("h5=hf at 0.075 bar+x5*hfg at 0.075 bar in KJ/kg")
disp("from steam tables,at 0.075 bar,hf=168.76 KJ/kg,hfg=2406.0 KJ/kg")
hf=168.76;
hfg=2406.0;
h5=hf+x5*hfg
disp("Let mass of steam bled at 20 bar be m1 and m2 per kg of steam generated.")
disp("h10=hf at 20 bar=908.76 KJ/kg,h8=hf at 4 bar=604.74 KJ/kg")
h10=908.76;
h8=604.74;
disp("At trap h10=h11=908.79 KJ/kg")
h11=h10;
disp("At condensate extraction pump,(CEP),h7-h6=v6*(4-0.075)*10^2 in KJ/kg")
disp("here v6=vf at 0.075 bar=0.001008 m^3/kg,h6=hf at 0.075 bar=168.79 KJ/kg")
v6=0.001008;
h6=168.79;
disp("so h7=h6+v6*(4-0.075)*10^2 in KJ/kg")
h7=h6+v6*(4-0.075)*10^2
disp("At feed pump,(FP),h9-h8=v8*(20-4)*10^2 in KJ/kg")
disp("here v8=vf at 4 bar=0.001084 m^3/kg,h8=hf at 4 bar=604.74 KJ/kg")
v8=0.001084;
h8=604.74;
disp("so h9=h8+v8*(20-4)*10^2 in KJ/kg")
h9=h8+v8*(20-4)*10^2
disp("Let us apply heat balance at closed feed water heater,")
disp("m1*h3+h9=m1*h10+4.18*200")
disp("so m1=(4.18*200-h9)/(h3-h10) in kg")
m1=(4.18*200-h9)/(h3-h10)
m1=0.114;//approx.
disp("Applying heat balance at open feed water,")
disp("m1*h11+m2*h4+(1-m1-m2)*h7=h8")
disp("so m2=(h8-m1*h11-h7+m1*h7)/(h4-h7) in kg")
m2=(h8-m1*h11-h7+m1*h7)/(h4-h7)
m2=0.144;//approx.
disp("Net work per kg steam generated,")
disp("w_net=(h2-h3)+(1-m1)*(h3-h4)+(1-m1-m2)*(h4-h5)-{(1-m1-m2)*(h7-h6)+(h9-h8)} in KJ/kg")
w_net=(h2-h3)+(1-m1)*(h3-h4)+(1-m1-m2)*(h4-h5)-{(1-m1-m2)*(h7-h6)+(h9-h8)} 
disp("Heat added per kg steam generated,q_add=(h2-h1) in KJ/kg")
h1=4.18*200;
q_add=(h2-h1)
disp("Thermal efficiency=w_net/q_add")
w_net/q_add
disp("in percentage")
w_net*100/q_add
disp("steam generation rate=P/w_net in kg/s")
P/w_net
disp("so thermal efficiency=44.78%")
disp("steam generation rate=87.99 kg/s")
disp("a> For the reheating introduced at 20 bar up to 400oc.The modified cycle representation is shown on T-S diagram by 1-2-3-3_a-4_a-5_a-6-7-8-9-10-11")
disp("At state 2,h2=3373.7 KJ/kg,s2=6.5966 KJ/kg K")
h2=3373.7;
s2=6.5966;
disp("At state 3,h3=2930.57 KJ/kg")
h3=2930.57;
disp("At state 3_a,h3_a=3247.6 KJ/kg,s3_a=7.1271 KJ/kg K")
h3_a=3247.6;
s3_a=7.1271;
disp("At state 4_a and 5_a,s3_a=s4_a=s5_a=7.1271 KJ/kg K")
s4_a=s3_a;
s5_a=s4_a;
disp("From steam tables by interpolation state 4_a is seen to be at 190.96oc at 4 bar,h4_a=2841.02 KJ/kg")
h4_a=2841.02;
disp("Let dryness fraction at state 5_a be x5,")
disp("s5_a=7.1271=sf at 0.075 bar+x5_a*sfg at 0.075 bar")
disp("from steam tables,at 0.075 bar,sf=0.5764 KJ/kg K,sfg=7.6750 KJ/kg K")
disp("so x5_a=(s5_a-sf)/sfg")
x5_a=(s5_a-sf)/sfg
x5_a=0.853;//approx.
disp("h5_a=hf at 0.075 bar+x5_a*hfg at 0.075 bar in KJ/kg")
disp("from steam tables,at 0.075 bar,hf=168.76 KJ/kg,hfg=2406.0 KJ/kg")
h5_a=hf+x5_a*hfg
disp("Let mass of bled steam at 20 bar and 4 bar be m1_a,m2_a per kg of steam generated.Applying heat balance at closed feed water heater.")
disp("m1_a*h3+h9=m1*h10+4.18*200")
disp("so m1_a=(4.18*200-h9)/(h3-h10) in kg")
m1_a=(4.18*200-h9)/(h3-h10)
m1_a=0.114;//approx.
disp("Applying heat balance at open feed water heater,")
disp("m1_a*h11+m2_a*h4_a+(1-m1_a-m2_a)*h7=h8")
disp("so m2_a=(h8-m1_a*h11-h7+m1_a*h7)/(h4_a-h7) in kg")
m2_a=(h8-m1_a*h11-h7+m1_a*h7)/(h4_a-h7)
m2_a=0.131;//approx.
disp("Net work per kg steam generated")
disp("w_net=(h2-h3)+(1-m1_a)*(h3_a-h4_a)+(1-m1_a-m2_a)*(h4_a-h5_a)-{(1-m1_a-m2_a)*(h7-h6)+(h9-h8)}in KJ/kg")
w_net=(h2-h3)+(1-m1_a)*(h3_a-h4_a)+(1-m1_a-m2_a)*(h4_a-h5_a)-{(1-m1_a-m2_a)*(h7-h6)+(h9-h8)}
disp("Heat added per kg steam generated,q_add=(h2-h1)+(1-m1_a)*(h3_a-h3)in KJ/kg")
q_add=(h2-h1)+(1-m1_a)*(h3_a-h3)
disp("Thermal efficiency,n=w_net/q_add")
n=w_net/q_add
disp("in percentage")
n=n*100
disp("% increase in thermal efficiency due to reheating=(0.4503-0.4478)*100/0.4478")
(0.4503-0.4478)*100/0.4478
disp("so thermal efficiency of reheat cycle=45.03%")
disp("% increase in efficiency due to reheating=0.56%")








