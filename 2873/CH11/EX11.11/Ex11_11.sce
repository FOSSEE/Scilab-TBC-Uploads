// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 11")
Q=2;//refrigeration effect in KW
disp("properties of CO2,")
disp("at 20 degree celcius,P1=57.27 bar,hf=144.11 KJ/kg,hg=299.62 KJ/kg,sf=0.523 KJ/kg K,sg_20oc=1.0527 KJ/kg K,Cpf=2.889 KJ/kg K,Cpg=2.135 KJ/kg K")
T1=(20+273);//condensation temperature in K
P1=57.27;
h3=144.11;
hg=299.62;
sf=0.523;
sg_20oc=1.0527;
Cpf=2.889;
Cpg=2.135;
disp("at -10 degree celcius,P2=26.49 bar,vg=0.014 m^3/kg,hf=60.78 KJ/kg,hg=322.28 KJ/kg,sf=0.2381 KJ/kg K,sg=1.2324 KJ/kg K")
T2=(-10+273);//evaporator temperature in K
P2=26.49;
vg=0.014;
hf=60.78;
h1=322.28;
sf=0.2381;
sg=1.2324;
disp("processes of vapour compression cycle are shown on T-s diagram")
disp("1-2:isentropic compression process")
disp("2-3-4:condensation process")
disp("4-5:isenthalpic expansion process")
disp("5-1:refrigeration process in evaporator")
disp("h1=hg at -10oc=322.28 KJ/kg")
disp("at 20 degree celcius,h2=hg+Cpg*(40-20)in KJ/kg")
h2=hg+Cpg*(40-20)
disp("entropy at state 2,at 20 degree celcius,s2=sg_20oc+Cpg*log((273+40)/(273+20))in KJ/kg K")
s2=sg_20oc+Cpg*log((273+40)/(273+20))
disp("entropy during isentropic process,s1=s2")
disp("at -10 degree celcius,s2=sf+x1*sfg")
disp("so x1=(s2-sf)/(sg-sf)")
x1=(s2-sf)/(sg-sf)
disp("enthalpy at state 1,at -10 degree celcius,h1=hf+x1*hfg in KJ/kg")
h1=hf+x1*(h1-hf)
disp("h3=hf at 20oc=144.11 KJ/kg")
disp("since undercooling occurs upto 10oc,so,h4=h3-Cpf*deltaT in KJ/kg")
h4=h3-Cpf*(20-10)
disp("also,h4=h5=115.22 KJ/kg")
h5=h4;
disp("refrigeration effect per kg of refrigerant(q)=(h1-h5)in KJ/kg")
q=(h1-h5)
disp("let refrigerant flow rate be m kg/s")
disp("refrigerant effect(Q)=m*q")
disp("m=Q/q in kg/s")
m=Q/q
disp("compressor work,Wc=h2-h1 in KJ/kg")
Wc=h2-h1
disp("COP=refrigeration effect per kg/compressor work per kg=q/Wc")
COP=q/Wc
disp("so COP=6.51,mass flow rate=0.01016 kg/s")
disp("NOTE=>In book,mass flow rate(m) which is 0.1016 kg/s is calculated wrong and it is correctly solve above and comes out to be m=0.01016 kg/s. ")





