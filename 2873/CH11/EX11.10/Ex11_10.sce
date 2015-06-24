// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 10")
Q=2.86*3.5;//refrigeration effect in KJ/s
N=1200;//compressor rpm
n=1.13;//compression index
disp("properties of Freon-12,")
disp("at -20 degree celcius,P1=1.51 bar,vg=0.1088 m^3/kg,hf=17.8 KJ/kg,h1=178.61 KJ/kg,sf=0.0730 KJ/kg K,s1=0.7082 KJ/kg K,Cpg=0.605 KJ/kg K")
P1=1.51;
T1=(-20+273);
vg=0.1088;
h1=178.61;
s1=0.7082;
s2=s1;
disp("at 40 degree celcius,P2=9.61 bar,h3=74.53 KJ/kg,hg=203.05 KJ/kg,sf=0.2716 KJ/kg K,sg=0.682 KJ/kg K,Cpf=0.976 KJ/kg K,Cpg=0.747 KJ/kg K")
P2=9.61;
h3=74.53;
h4=h3;
hg=203.05;
sf=0.2716;
sg=0.682;
Cpf=0.976;
Cpg=0.747;
disp("during expansion(throttling)between 3 and 4")
disp("h3=h4=hf_40oc=74.53 KJ/kg=h4")
disp("process 1-2 is adiabatic compression so,")
disp("s1=s2,s1=sg_-20oc=0.7082 KJ/kg K")
disp("at 40 degree celcius or 313 K,s1=sg+Cpg*log(T2/313)")
disp("T2=313*exp((s1-sg)/Cpg)in K")
T2=313*exp((s1-sg)/Cpg)
disp("so temperature after compression,T2=324.17 K")
disp("enthalpy after compression,h2=hg+Cpg*(T2-313)in KJ/kg")
h2=hg+Cpg*(T2-313)
disp("compression work required,per kg(Wc)=h2-h1 in KJ/kg")
Wc=h2-h1
disp("refrigeration effect during cycle,per kg(q)=h1-h4 in KJ/kg")
q=h1-h4
disp("mass flow rate of refrigerant,m=Q/q in kg/s")
m=Q/q
m=0.096;//approx.
disp("COP=q/Wc")
COP=q/Wc
disp("volumetric efficiency of reciprocating compressor,given C=0.02")
C=0.02;
disp("n_vol=1+C-C*(P2/P1)^(1/n)")
n_vol=1+C-C*(P2/P1)^(1/n)
disp("let piston displacement by V,m^3")
disp("mass flow rate,m=(V*n_vol*N)/(60*vg_-20oc)")
disp("so V=(m*60*vg_-20oc)*10^6/(N*n_vol) in cm^3")
V=(m*60*vg)*10^6/(N*n_vol)
disp("so COP=3.175")
disp("and piston displacement=569.45 cm^3")







