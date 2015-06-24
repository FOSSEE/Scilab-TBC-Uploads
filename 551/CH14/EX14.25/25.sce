clc
h2a=183.2; //kJ/kg K
cpv=0.733; //Vapour specific heat in kJ/kg K
cpl=1.235; //Liquid specific heat in kJ/kg K
s2a=0.7020; //Entropy of vapour in kJ/kg K
s3a=0.6854; //Entropy of vapour in kJ/kg K
T2=270; //K
T2a=263; //K
T3a=303; //K
h3a=199.6; //kJ/kg
h_f4=64.6; //kJ/kg
dT4=6; //dT4=T4-T4a
v2a=0.0767;
n=2; //number of cylinder

h2=h2a+cpv*(T2-T2a);
s2=s2a+cpv*log(T2/T2a);

T3=T3a*%e^((s2-s3a)/cpv);
h3=h3a+cpv*(T3-T3a);
h_f4a=h_f4-cpl*dT4;
h1=h_f4a;

v2=v2a/T2a*T2;

disp("(i) Refrigerating effect per kg =")
RE=h2-h1;
disp(RE)
disp("kJ/kg")

disp("(ii) Mass of refrigerant to be circulated per minute =")
m=2400/RE;
disp(m)
disp("kg/min")

disp("(iii) Theoretical piston displacement per minute =")
v=m*v2;
disp(v)
disp("m^3/min")

disp("(iv) Theoretical power required to run the compressor = ")
P=m/60*(h3-h2);
disp(P)
disp("kW")

disp("(v) Heat removed through the condenser per min =")
Q=m*(h3-h_f4a);
disp(Q)
disp("kJ/min")

disp("(vi) Theoretical bore (d) and stroke (l)")
d=(v/n/%pi*4/1.25/1000)^(1/3)*1000;
disp("Theroritical bore =")
disp(d)
disp("mm")

disp("stroke =")
l=1.25*d;
disp(l)
disp("mm")