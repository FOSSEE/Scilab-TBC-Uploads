clc
mn = 3 // Mass of nitrogen in kg
mc = 5 // mass of CO2 in kg
an = 28 // Atomic weight of nitrogen
ac = 44 // Atomic weight of CO2
// Part (a)
xn = (mn/an)/((mn/an)+(mc/ac)) // mole fraction of nitrogen
xc = (mc/ac)/((mn/an)+(mc/ac)) // mole fraction of carbon

printf("\n Example 10.8")
printf("\n\n Mole fraction of N2 is %f ",xn)
printf("\n Mole fraction of CO2  is %f" ,xc)
//The answers vary due to round off error

// Part (b)
M = xn*an+xc*ac // Equivalent molecular weight
printf("\n\n Equivalent molecular weight of mixture is %fkg/kg mol" ,M)

// Part (c)
R = 8.314 // Gas constant
Req = ((mn*R/an)+(mc*R/ac))/(mn+mc)
printf("\n\n The equivalent gas constant of the mixture is %f kJ/kg K" ,Req)

// Part (d)
P = 300 // Initial pressure in kPa
T = 20 // Initial temperature in degree Celsius
Pn = xn*P // Partial pressure of Nitrogen
Pc = xc*P // Partial pressure of CO2 
Vn = (mn*R*(T+273))/(P*an) // Volume of nitrogen
Vc = (mc*R*(T+273))/(P*ac) // Volume of CO2
printf("\n\n Partial pressures of nitrogen and CO2 are \n %f kPa and %f kPa respectively",Pn,Pc)
printf("\n Partial volume of nitrogen and CO2 are \n %f kPa and %f kPa respectively",Vn,Vc)
// Part (e)
V = (mn+mc)*Req*(T+273)/P // Total volume
rho = (mn+mc)/V // mass density
printf("\n\n Total volume of mixture is %f m^3" ,V)
printf("\n Density of mixture is %f kg/m^3" ,rho)

// Part (f)
gn = 1.4 // Heat capacity ratio for nitrogen
gc = 1.286 // Heat capacity ratio for carbon dioxide 
cvn = R/((gn-1)*an) // cp and cv of N2
cpn = gn*cvn  // Constant pressure heat capacity of nitrogen
cvc = R/((gc-1)*ac) // cp and cv of CO2
cpc = gc*cvc// COnstant pressure heat capacity of carbon dioxide 
cp = (mn*cpn+mc*cpc)/(mn+mc)  // Constant pressure heat capacity ratio of mixture
cv = (mn*cvn+mc*cvc)/(mn+mc) // Constant volume Heat capacity ratio of mixture
printf("\n\n Cp and Cv of mixture are \n %fkJ/kg K and %fkJ/kg K respectively" ,cp,cv)
T1 = T 
T2 = 40 
U21 = (mn+mc)*cv*(T2-T1)
H21 = (mn+mc)*cp*(T2-T1)
S21v = (mn+mc)*cv*log((T2+273)/(T1+273)) // If heated at constant volume
S21p = (mn+mc)*cp*log((T2+273)/(T1+273)) // If heated at constant Pressure

printf("\n\n Change in internal energy of the system heated at constant volume  is %fkJ" ,U21)
printf("\n Change in enthalpy of the system heated at constant volume  is %fkJ" ,H21)
printf("\n Change in entropy of the system heated at constant volume  is %f kJ/kg K",S21v)
printf("\n\n Change in entropy of the system heated at constant Pressure  is %fkJ/kgK" ,S21p)

//The answers vary due to round off error

