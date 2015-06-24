//Calculation of lowest calorific value
clc,clear
//Given:
HCV=46900 //Highest calorific value(HCV) of petrol in kJ/kg
pH2=14.4/100 //Composition of Hydrogen in petrol by mass
ufg=2304.4 //Latent heat of evaporation for water in kJ/kg
//Solution:
//  2[H2] + [O2] = 2[H2O]
H=1 //Atomic mass of Hydrogen(H)
O=16 //Atomic mass of Oxygen(O)
//Assume 1 kg of fuel consume
mH2=1*pH2 //Mass of Hydrogen in kg/kg of fuel
m_a=2*(2*H+O)/(2*2*H)*mH2 //Mass of water produced in kg/kg of fuel
LCV=HCV-m_a*ufg //Lowest calorific value in kJ/kg
//Results:
printf("\n The LCV of petrol = %.0f kJ/kg\n",LCV)
