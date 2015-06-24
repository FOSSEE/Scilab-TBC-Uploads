an = 20.183; // molecular weight of neon
Pc = 2.73; // Critical pressure
Tc = 44.5;
Vc = 0.0416;
Pr = 2; // Reduced Pressure
Tr = 1.3; 
Z = 0.7;
P = Pr*Pc; 
T = Tr*Tc;
R = 8.314;
v = (Z*R*T)/(P*1000*an);
vr = (v*an)/Vc ;
disp("m3/kg",v,"Specific volume is")
disp("K",T,"Specific temperature is")
disp("kPa",P,"Specific pressure is")
disp(vr,"Reduced volume is")