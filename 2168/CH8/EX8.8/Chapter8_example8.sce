clc
clear
//Input data
C=85//Composition of C in percent
H2=12.3//Composition of H2 in percent
i=2.7//Incombustible residue composition in percent
ma=25//Mass of air supplied in kg of air per kg of fuel
pO2=23//Percentage of oxygen in gemetric analysis of air
pN2=77//Percentage of nitrogen in gemetric analysis of air
p=1.03//Total pressure of the exhaust gases in kg/cm^2
mC=12//Molecular weight of carbon
mO2=32//Molecular weight of O2
mCO2=44//Molecular weight of CO2
mH2=2//Molecular weght of H2
mH2O=18//Molecular weight of H2O
mN2=28//Molecular weight of N2

//Calculations
xCO2=((C/100)*(mCO2/mC))//per kg of fuel, the products formed in kg
xH2O=((H2/100)*((2*mH2O)/(2*mH2)))//per kg of fuel, the products formed in kg
xO2=(((C/100)*(mO2/mC))+((H2/100)*(mO2/(2*mH2))))//Oxygen used in kg
xN2=(pN2/pO2)*xO2//Associated nitrogen in kg
mma=(xO2+xN2)//Minimum air required in kg
ea=(ma-mma)//Excess air supplied in kg
XO2=((pO2/100)*ea)//Mass of O2 in excess air in kg
XN2=((pN2/100)*ea)//Mass of N2 in excess air in kg
wCO2=xCO2/mCO2//Parts by volume for CO2
wO2=XO2/mO2//Parts by volume for O2
wN2=((XN2+xN2)/mN2)//Parts by volume for N2
wH2O=(xH2O/mH2O)//Parts by volume for H2)
Tv=(wCO2+wO2+wN2+wH2O)//Total parts by volume
ppCO2=(wCO2/Tv)*100//Percentage volume of CO2
ppO2=(wO2/Tv)*100//Percentage volume of O2
ppN2=(wN2/Tv)*100//Percentage volume of N2
ppH2O=(wH2O/Tv)*100//Percenatage volume of H2O
Tv1=(wCO2+wO2+wN2)//Total parts by volume for dry products
pp1CO2=(wCO2/Tv1)*100//Percentage volume of CO2 for dry analysis
pp1O2=(wO2/Tv1)*100//Percentage volume of O2 for dry analysis
pp1N2=(wN2/Tv1)*100//Percentage volume of N2 for dry analysis
papH2O=(ppH2O/100)*p//Partial pressure of H2O in kg/cm^2

//Output
printf('The volumetric analysis for wet products gives (in percent) \n CO2 -> %3.1f \n O2 -> %3.1f \n N2 -> %3.1f \n H2O -> %3.1f \n\n The volumetric analysis for dry products gives (in percent) \n CO2 -> %3.1f \n O2 -> %3.1f \n N2 -> %3.1f \n\n The partial pressure of the vapour is %3.4f kg/cm^2',ppCO2,ppO2,ppN2,ppH2O,pp1CO2,pp1O2,pp1N2,papH2O) 
