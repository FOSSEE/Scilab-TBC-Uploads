Ta = 288;
rp = 8; // Pb/Pa
g = 1.33; g1 = 1.44; cv = 0.718; cpa = 1.005; cpg = 1.11; R = 0.287;
Tb = Ta*(rp)^((g1-1)/g1);
Tc = 1073; Tm = 800+273; Tmin = 100+273;
Td = Tc/(rp^((g-1)/g));
Wgt = cpg*(Tc-Td)-cpa*(Tb-Ta);
Q1 = cpg*(Tc-Tb);
Q1_ = cpg*(Tc-Td);
h1 = 3775; h2 = 2183; h3 = 138; h4 = h3;
Q1_st = h1-h3; // Q1'
Q_fe = cpg*(Tm-Tmin);
was = Q1_st/Q_fe; // wa/ws
Wst = h1-h2;
PO = 190e03; // in kW
ws = PO/(was*Wgt+Wst);
wa = was*ws;
CV = 43300; // in kJ/kg
waf = CV/(Q1+Q1_);
FEI = (wa/waf)*CV;
noA = PO/FEI;
disp(waf,"Air fuel ratio is")
disp("%",noA*100,"Overall efficiency of combined plant is")



