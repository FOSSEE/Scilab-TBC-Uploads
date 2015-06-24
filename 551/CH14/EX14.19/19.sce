clc
h2=178.61; //kJ/kg
h3a=203.05; //kJ/kg
h_f4=74.53; //kJ/kg
h1=h_f4;
s3a=0.682; //kJ/kg K
s2=0.7082; //kJ/kg K
cp=0.747; //kJ/kg K
T3a=313; //K
CE=20; //Cooling effect
C=0.03;
v_g=0.1088;
p_d=9.607;
p_s=1.509;
n=1.13;

m=CE/(h2-h1);
T3=T3a*%e^((s2-s3a)/cp)
h3=h3a+cp*(T3-T3a);

P=m*(h3-h2);
disp("Power required by the machine =")
disp(P)
disp("kW")

n_vol=1+C-C*(p_d/p_s)^(1/n); //Volumetric efficiency
V1=m*v_g; //volume of refrigerant at the intake conditions
V_swept=V1/n_vol;

V=V_swept*60/300;
disp("Piston displacement =")
disp(V)
disp("m^3")