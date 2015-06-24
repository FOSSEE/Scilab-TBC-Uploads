Ps = 0.033363; P = 1.0132;
W2 = (0.622*Ps)/(P-Ps);
hfg2 = 2439.9; hf2 = 109.1; cpa = 1.005;
hg = 2559.9; hw1 = hg;
T2 = 25+273; T1 = 32+273;
W1 = (cpa*(T2-T1)+(W2*hfg2))/(hw1-hf2);
Pw = ((W1/0.622)*P)/(1+(W1/0.622));
disp("kg vap./kg dry air",W1,"Specific humidity is")
disp("bar",Pw,"Partial pressure of water vapour is")
disp("degree",24.1,"Dew point temperature is") // saturation temperature at 0.03 bar
Psat = 0.048; // at 32 degree
fi = Pw/Psat;
disp("%",fi*100,"Relative humidity is")
mu = (Pw/Ps)*((P-Ps)/(P-Pw));
disp(mu,"Degree of saturation is")
Pa = P-Pw;
Ra = 0.287; Tab = T1;
rho_a = (Pa*100)/(Ra*Tab);
disp("kg/m3",rho_a,"Density of dry air is")
rho_w = W1*rho_a;
disp("kg/m3",rho_w,"Density of water vapour is")
ta = 32; tdb = 32; tdp = 24.1;
h = cpa*ta + W1*(hg+1.88*(tdb-tdp));
disp("kJ/kg",h,"Enthalpy of the mixture is")
