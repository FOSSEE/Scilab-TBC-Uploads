clc
clear
//Input data
C=86//Percentage of carbon
H2=14//Percentage of Hydrogen
ea=20//Percentage of excess air
O2=23//Weight of oxygen in air in percent
mO2=32//Molecular weight of O2
mCO2=44//Molecular weight of CO2
mCO=28//Molecular weight of CO
mN2=28//Molecular weight of N2
mC=12//Molecular weight of carbon
mH2=2//Molecular weight of H2
mH2O=18//Molecular weight of H2O

//Calculations
ma=((100/O2)*((C/100)*(mO2/mC)+(H2/100)*(mO2/(2*mH2))))//Minimum weight of air required in kg/kg petrol
//Products of combustion by weight per kg- petrol 
XCO2=(C/100)*(mCO2/mC)//CO2 in kg
XH2O=(H2/100)*(mH2O/mH2)//H2O in kg
XO2=(XCO2+XH2O-1)*(ea/100)//O2 in kg
XN2=(ma*(1+(ea/100))*((100-O2)/100))//N2 in kg
XT=(XCO2+XH2O+XO2+XN2)//Total weight in kg
//Percentage analysis by weight
xCO2=(XCO2/XT)*100//CO2
xH2O=(XH2O/XT)*100//H2O
xO2=(XO2/XT)*100//O2
xN2=(XN2/XT)*100//N2
//Percentage by weight to molecular weight
xxCO2=(xCO2/mCO2)//CO2
xxH2O=(xH2O/mH2O)//H2O
xxO2=(xO2/mO2)//O2
xxN2=(xN2/mN2)//N2
xxt=(xxCO2+xxH2O+xxO2+xxN2)//Total percentage by weight to molecular weight
//Percentage by volume
pCO2=(xxCO2/xxt)*100//CO2
pH2O=(xxH2O/xxt)*100//H2O
pO2=(xxO2/xxt)*100//O2
pN2=(xxN2/xxt)*100//N2

//Output
printf('Volumetric composition of the products of combustion (in percent) \n CO2 -> %3.1f \n H2O -> %3.1f \n O2  -> %3.2f \n N2  -> %3.2f',pCO2,pH2O,pO2,pN2)
