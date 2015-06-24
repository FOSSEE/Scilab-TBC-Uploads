clc
clear
//Input data
C=90//Percentage composition of C 
H2=3.3//Percentage composition of H2
O2=3//Percentage composition of O2
N2=0.8//Percentage composition of N2
S=0.9//Percentage composition of S
Ash=2//Percentage composition of Ash
eO2=50//Percentage of excess air
mC=12//Molecular weight of carbon
mS=32//Molecular weight of sulphur
mCO2=44//Molecular weight of CO2
mO2=32//Molecular weight of O2
mSO2=64//Molecular weight of SO2
mN2=28//Molecular weight of N2

//Calculations
w1=(C/100)//Weight per kg of fuel of C in kg
w2=(H2/100)//Weight per kg of fuel of H2 in kg
w3=(S/100)//Weight per kg of fuel of S in kg
O1=(8/3)//Oxygen required per kg of constituent for C in kg
O2=8//Oxygen required per kg of constituent for H2 in kg
O3=1//Oxygen requred per kg of constituent for S in kg
O11=(w1*O1)//Oxygen required per kg of fuel for C in kg
O22=(w2*O2)//Oxygen required per kg of fuel for H2 in kg
O33=(w3*O3)//Oxygen required per kg of fuel for S in kg
T=(O11+O22+O33-(O2/100))//Total Oxygen required per kg of fuel in kg
ma=(T*(100/23))//Minimum air required in kg
aN2=(ma*((100+eO2)/100)*(77/100))//N2 in actual air supply in kg
TN2=(aN2+(N2/100))//Total N2 in kg
wt=(ma*(eO2/100)*(23/100))//Weight of air due to excess O2 in kg
TSO2=(w3*(mSO2/mS))//Total SO2 in kg
TCO2=(w1*(mCO2/mC))//Total CO2 in kg
pCO2=(TCO2/mCO2)//Parts by volume of CO2
pSO2=(TSO2/mSO2)//Parts by volume of SO2
pO2=(wt/mO2)//Parts by volume of O2
pN2=(TN2/mN2)//Parts by volume of N2
Tv=(pCO2+pSO2+pN2+pO2)//Total parts by volume
ppCO2=(pCO2/Tv)*100//Percentage volume of CO2
ppSO2=(pSO2/Tv)*100//Percenatge volume of SO2
ppO2=(pO2/Tv)*100//Percentage volume of O2
ppN2=(pN2/Tv)*100//Percentage volume of N2

//Output
printf('Percentage combustion of the dry flue gases by volume is \n CO2 %3.2f percent \n SO2 %3.2f percent \n O2 %3.1f percent \n N2 %3.2f percent',ppCO2,ppSO2,ppO2,ppN2)
