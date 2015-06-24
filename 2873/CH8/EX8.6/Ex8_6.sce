// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 8 Example 6")
disp("case (a) When there is no feed water heater")
disp("Thermal efficiency of cycle=((h2-h3)-(h1-h4))/(h2-h1)")
disp("from steam tables,h2=h at 200 bar,650oc=3675.3 KJ/kg,s2=s at 200 bar,650oc=6.6582 KJ/kg K,h4=hf at 0.05 bar=137.82 KJ/kg,v4=vf at 0.05 bar=0.001005 m^3/kg")
h2=3675.3;
s2=6.6582;
h4=137.82;
v4=0.001005;
disp("hf at 0.05 bar=137.82 KJ/kg,hfg at 0.05 bar=2423.7 KJ/kg,sf at 0.05 bar=0.4764 KJ/kg K,sfg at 0.05 bar=7.9187 KJ/kg K")
hf=137.82;
hfg=2423.7;
sf=0.4764;
sfg=7.9187;
disp("For process 2-3,s2=s3.Let dryness fraction at 3 be x3.")
s3=s2;
disp("s3=6.6582=sf at 0.05 bar+x3*sfg at 0.05 bar")
disp("so x3=(s3-sf)/sfg")
x3=(s3-sf)/sfg
x3=0.781;//approx.
disp("h3=hf at 0.05 bar+x3*hfg at 0.05 bar in KJ/kg")
h3=hf+x3*hfg
disp("For pumping process 4-1,")
disp("h1-h4=v4*deltap")
disp("h1=h4+v4*(200-0.5)*10^2 in KJ/kg")
h1=h4+v4*(200-0.5)*10^2
disp("Thermal efficiency of cycle=")
((h2-h3)-(h1-h4))/(h2-h1)
disp("in percentage")
((h2-h3)-(h1-h4))*100/(h2-h1)
disp("case (b) When there is only one feed water heater working at 8 bar")
disp("here,let mass of steam bled for feed heating be m kg")
disp("For process 2-6,s2=s6=6.6582 KJ/kg K")
s6=s2;
disp("Let dryness fraction at state 6 be x6")
disp("s6=sf at 8 bar+x6*sfg at 8 bar")
disp("from steam tables,hf at 8 bar=721.11 KJ/kg,vf at 8 bar=0.001115 m^3/kg,hfg at 8 bar=2048 KJ/kg,sf at 8 bar=2.0462 KJ/kg K,sfg at 8 bar=4.6166 KJ/kg K")
hf=721.11;
vf=0.001115;
hfg=2048;
sf=2.0462;
sfg=4.6166;
disp("substituting entropy values,x6=(s6-sf)/sfg")
x6=(s6-sf)/sfg
x6=0.999;//approx.
disp("h6=hf at at 8 bar+x6*hfg at 8 bar in KJ/kg")
h6=hf+x6*hfg
disp("Assuming the state of fluid leaving open feed water heater to be saturated liquid at 8 bar.h7=hf at 8 bar=721.11 KJ/kg")
h7=721.11;
disp("For process 4-5,h5=h4+v4*(8-.05)*10^2 in KJ/kg")
h5=h4+v4*(8-.05)*10^2
disp("Applying energy balance at open feed water heater,")
disp("m*h6+(1-m)*h5=1*h7")
disp("so m=(h7-h5)/(h6-h5) in kg")
m=(h7-h5)/(h6-h5)
disp("For process 7-1,h1=h7+v7*(200-8)*10^2 in KJ/kg")
disp("here h7=hf at 8 bar,v7=vf at 8 bar")
h7=hf;
v7=vf;
h1=h7+v7*(200-8)*10^2
disp("Thermal efficiency of cycle=((h2-h6)+(1-m)*(h6-h3)-{(1-m)*(h5-h4)+(h1-h7)})/(h2-h1)")
((h2-h6)+(1-m)*(h6-h3)-{(1-m)*(h5-h4)+(h1-h7)})/(h2-h1)
disp("in percentage")
((h2-h6)+(1-m)*(h6-h3)-{(1-m)*(h5-h4)+(h1-h7)})*100/(h2-h1)
disp("case (c) When there are two feed water heaters working at 40 bar and 4 bar")
disp("here, let us assume the mass of steam at 40 bar,4 bar to be m1 kg and m2 kg respectively.")
disp("2-10-9-3,s2=s10=s9=s3=6.6582 KJ/kg K")
s3=s2;
s9=s3;
s10=s9;
disp("At state 10.s10>sg at 40 bar(6.0701 KJ/kg K)so state 10 lies in superheated region at 40 bar pressure.")
disp("From steam table by interpolation,T10=370.6oc,so h10=3141.81 KJ/kg")
T10=370.6;
h10=3141.81;
disp("Let dryness fraction at state 9 be x9 so,") 
disp("s9=6.6582=sf at 4 bar+x9*sfg at 4 bar")
disp("from steam tables,at 4 bar,sf=1.7766 KJ/kg K,sfg=5.1193 KJ/kg K")
sf=1.7766;
sfg=5.1193;
disp("x9=(s9-sf)/sfg")
x9=(s9-sf)/sfg
x9=0.9536;//approx.
disp("h9=hf at 4 bar+x9*hfg at 4 bar in KJ/kg")
disp("from steam tables,at 4 bar,hf=604.74 KJ/kg,hfg=2133.8 KJ/kg")
hf=604.74;
hfg=2133.8;
h9=hf+x9*hfg 
disp("Assuming the state of fluid leaving open feed water heater to be saturated liquid at respective pressures i.e.")
disp("h11=hf at 4 bar=604.74 KJ/kg,v11=0.001084 m^3/kg=vf at 4 bar")
h11=604.74;
v11=0.001084;
disp("h13=hf at 40 bar=1087.31 KJ/kg,v13=0.001252 m^3/kg=vf at40 bar")
h13=1087.31;
v13=0.001252;
disp("For process 4-8,i.e in CEP.")
disp("h8=h4+v4*(4-0.05)*10^2 in KJ/kg")
h8=h4+v4*(4-0.05)*10^2
disp("For process 11-12,i.e in FP2,")
disp("h12=h11+v11*(40-4)*10^2 in KJ/kg")
h12=h11+v11*(40-4)*10^2
disp("For process 13-1_a i.e. in FP1,h1_a=h13+v13*(200-40)*10^2 in KJ/kg")
h1_a=h13+v13*(200-40)*10^2
disp("m1*3141.81+(1-m1)*608.64=1087.31")
disp("so m1=(1087.31-608.64)/(3141.81-608.64)in kg")
m1=(1087.31-608.64)/(3141.81-608.64)
disp("Applying energy balance  on open feed water heater 1 (OFWH1)")
disp("m1*h10+(1-m1)*h12)=1*h13")
disp("so m1=(h13-h12)/(h10-h12) in kg")
m1=(h13-h12)/(h10-h12)
disp("Applying energy balance on open feed water heater 2 (OFWH2)")
disp("m2*h9+(1-m1-m2)*h8=(1-m1)*h11")
disp("so m2=(1-m1)*(h11-h8)/(h9-h8) in kg")
m2=(1-m1)*(h11-h8)/(h9-h8)
disp("Thermal efficiency of cycle,n=[{(h2-h10)+(1-m1)*(h10-h9)+(1-m1-m2)*(h9-h3)}-{W_CEP+W_FP1+W_FP2}]/(h2-h1_a)")
disp("W_CEP=(1-m1-m2)*(h8-h4) in KJ/kg steam from boiler")
W_CEP=(1-m1-m2)*(h8-h4)
disp("W_FP1=(h1_a-h13)in KJ/kg of steam from boiler")
W_FP1=(h1_a-h13)
disp("W_FP2=(1-m1)*(h12-h11)in KJ/kg of steam from boiler")
W_FP2=(1-m1)*(h12-h11)
disp("W_CEP+W_FP1+W_FP2 in KJ/kg of steam from boiler")
W_CEP+W_FP1+W_FP2
disp("n=[{(h2-h10)+(1-m1)*(h10-h9)+(1-m1-m2)*(h9-h3)}-{W_CEP+W_FP1+W_FP2}]/(h2-h1_a)")
n=[{(h2-h10)+(1-m1)*(h10-h9)+(1-m1-m2)*(h9-h3)}-{W_CEP+W_FP1+W_FP2}]/(h2-h1_a)
disp("in percentage")
n=n*100
disp("so cycle thermal efficiency,na=46.18%")
disp("nb=49.76%")
disp("nc=51.37%")
disp("hence it is obvious that efficiency increases with increase in number of feed heaters.")
