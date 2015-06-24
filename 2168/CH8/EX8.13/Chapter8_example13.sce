clc
clear
//Input data
C=84//Gravimetric analysis composition in percent
H2=12//Gravimetric analysis composition in percent
S=1.5//Gravimetric analysis composition in percent
O2=1.5//Gravimetric analysis composition in percent
ma=20//Mass of air in kg
pC=4//Percent of carbon in the fuel which is burnt to form CO
mO2=32//Molecular weight of O2
mCO2=44//Molecular weight of CO2
mCO=28//Molecular weight of CO
mN2=28//Molecular weight of N2
mC=12//Molecular weight of carbon
mH2=2//Molecular weight of H2
mS=32//Molecular weight of S
mSO2=64//Molecular weight of SO2

//Calculations
mm=((100/23)*((C/100)*(mO2/mC)+(H2/100)*(mO2/(2*mH2))+(S/100)*(mO2/mS)-(O2/100)))//Minimum air in kg/kg of fuel 
//When 20 kg of air is supplied
xCO2=((C/100)*(mCO2/mC))//Mass of CO2 in kg
xSO2=((S/100)*(mSO2/mS))//Mass of SO2 in kg
xO2=((23/100)*(ma-mm))//Mass of O2 in kg
xN2=((77/100)*ma)//Mass of N2 in kg
nCO2=(xCO2/mCO2)//Parts by volume of CO2
nSO2=(xSO2/mSO2)//Parts by volume of SO2
nO2=(xO2/mO2)//Parts by volume of O2
nN2=(xN2/mN2)//Parts by volume of N2
T=(nCO2+nSO2+nO2+nN2)//Total parts by volume
pCO2=(nCO2/T)*100//Percentage volume of CO2
pSO2=(nSO2/T)*100//Percentage volume of SO2
pO2=(nO2/T)*100//Percentage volume of O2
pN2=(nN2/T)*100//Percentage volume of N2
//4% of available carbon is burnt to CO then per kg of fuel
yCO2=((C/100)/(1+(pC/100)))*(mCO2/mC)//Mass of CO2 in kg
yCO=(((C/100)-((C/100)/(1+(pC/100))))*(mCO/mC))//Mass of CO in kg
yO2=((C/100)*(mO2/mC))//Mass of O2 in kg
eO2=(yO2-(((C/100)/(1+(pC/100)))*(mO2/mC)+(((C/100)-((C/100)/(1+(pC/100))))*(mO2/(2*mC)))))
nnCO2=(yCO2/mCO2)//Parts by volume of CO2
nnCO=(yCO/mCO)//Parts by volume of CO
nnSO2=(xSO2/mSO2)//Parts by volume of SO2
nnO2=((xO2+eO2)/mO2)//Parts by volume of O2
nnN2=(xN2/mN2)//Parts by volume of N2
TT=(nnCO2+nnCO+nnSO2+nnO2+nnN2)//Total parts by volume
ppCO2=(nnCO2/TT)*100//Percentage volume of CO2

//Output
printf('Minimum weight of air required for complete combustion of 1 kg of the fuel is %3.1f kg/kg of fuel \n\n Percentage composition by volume when %i kg of air is supplied (in percent) \n CO2 -> %3.1f \n SO2 -> %3.1f \n O2 -> %3.1f \n N2 -> %3.1f \n\n The percentage volume of CO2 when %i percent of the carbon in the fuel is burnt to form CO is %3.1f percent',mm,ma,pCO2,pSO2,pO2,pN2,pC,ppCO2)
