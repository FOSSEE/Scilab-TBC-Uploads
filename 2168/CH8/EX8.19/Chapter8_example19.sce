clc
clear
//Input data
CO2=8.85//Percentage composition by volume
CO=1.2//Percentage composition by volume
O2=6.8//Percentage composition by volume
N2=83.15//Percentage composition by volume
C=84//Percentage composition by weight
H2=14//Percentage composition by weight
aO2=2//Percentage composition by weight
mO2=32//Molecular weight of O2
mCO2=44//Molecular weight of CO2
mCO=28//Molecular weight of CO
mN2=28//Molecular weight of N2
mC=12//Molecular weight of carbon
mH2=2//Molecular weight of H2
mH2O=18//Molecular weight of H2O

//Calculations
//O2 required per kg of fuel
xC=((C/100)*(mO2/mC))//C
xH2=((H2/100)*(mO2/(2*mH2)))//H2
xO2=-(aO2/100)//O2
ttO2=(xC+xH2-xO2)//Theoretical total oxygen required in kg/kg fuel
twa=(ttO2/(23/100))//Theoretical weight of air in kg/kg fuel
//Conversion of volumetric analysis of the flue gas into a weight analysis
//Percenatge by volume * mol. wt
xxCO2=(CO2*mCO2)//CO2
xxCO=(CO*mCO)//CO
xxO2=(O2*mO2)//O2
xxN2=(N2*mN2)//N2
xxt=(xxCO2+xxCO+xxO2+xxN2)//Total
//Percentage by weight
yCO2=(xxCO2/xxt)*100//CO2
yCO=(xxCO/xxt)*100//CO
yO2=(xxO2/xxt)*100//O2
yN2=(xxN2/xxt)*100//N2
wcd=((yCO2/100)*(mC/mCO2))+((yCO/100)*(mC/mCO))//Weight of carbon/ kg of dry flue gas in kg
wdf=((C/100)/wcd)//Wt. of dry flue gas/kg fuel in kg
wxf=(wdf*(yO2/100))//Weight of excess O2/kg fuel in kg
weO2=(wxf/(23/100))//Weight of excess air in kg/kg fuel
was=(twa+weO2)//Weight of air supplied/kg fuel in kg

//Output
printf('Weight of air supplied per kg fuel burnt is %3.2f kg',was)
