mn = 3; // Mass of nitrogen in kg
mc = 5; // mass of CO2 in kg
an = 28; // Atomic weight of nitrogen
ac = 44; // Atomic weight of CO2
// Part (a)
xn = (mn/an)/((mn/an)+(mc/ac)); 
xc = (mc/ac)/((mn/an)+(mc/ac)); 
disp(xn,"Mole fraction of N2 is")
disp(xc,"Mole fraction of CO2 is")
// Part (b)
M = xn*an+xc*ac;
disp("kg",M,"Equivalant molecular weight of mixture is")
// Part (c)
R = 8.314;
Req = ((mn*R/an)+(mc*R/ac))/(mn+mc);
disp("kJ/kg K",Req,"The equivalent gas constant of the mixture is")
// Part (d)
P = 300; // Pressure in kPa
T = 20+273;
Pn = xn*P; // Partial pressure of Nitrogen
Pc = xc*P; // Partial pressure of CO2 
Vn = (mn*R*T)/(P*an); // Volume of nitrogen
Vc = (mc*R*T)/(P*ac); // Volume of CO2
disp("kPa respectively",Pc,"and",Pn,"Partial pressures of nitrogen and CO2 are")
disp("m3 respectively",Vc,"and",Vn,"Partial volume of nitrogen and CO2 are")
// Part (e)
V = (mn+mc)*Req*T/P; // Total volume
rho = (mn+mc)/V;
disp("m3",V,"Volume of mixture is")
disp("kg/m3",rho,"Density of mixture is")
// Part (f)
gn = 1.4; // Gamma
gc = 1.286;
cvn = R/((gn-1)*an); // cp and cv of N2
cpn = gn*cvn; 
cvc = R/((gc-1)*ac); // cp and cv of CO2
cpc = gc*cvc;
cp = (mn*cpn+mc*cpc)/(mn+mc) ; // of mixture
cv = (mn*cvn+mc*cvc)/(mn+mc) ;
disp("kJ/kg K respectively",cv,"and",cp,"cp and cv of mixture are")
T1 = T; T2 = 40+273;
U21 = (mn+mc)*cv*(T2-T1);
H21 = (mn+mc)*cp*(T2-T1);
S21v = (mn+mc)*cv*log(T2/T1); // If heated at constant volume
disp("kJ",U21,"Change in internal energy of the system heated at constant volume is")
disp("kJ",H21,"Change in enthalpy of the system heated at constant volume is")
disp("kJ/kg K",S21v,"Change in entropy of the system heated at constant volume is")
S21p = (mn+mc)*cp*log(T2/T1); // If heated at constant Pressure
disp("kJ",S21p,"Change in entropy of the system heated at constant Pressure is")

