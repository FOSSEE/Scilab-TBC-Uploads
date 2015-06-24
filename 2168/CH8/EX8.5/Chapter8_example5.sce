clc
clear
//Input data
C=85//Composition of C in percent
H2=15//Composition of H2 in percent
CV=10600//Calorific value in kcal/kg
eO2=60//Percentage of air in excess
bhp=240//Brake horse power in h.p
nth=30//Thermal efficiency in percent
O2=23//Percentage of oxygen contained in air by weight
wC=12//Molecular weight of carbon
wH2=2//Molecular weght of H2
wO2=32//Molecular weight of O2

//Calculations
mma=(100/23)*(((C/100)*(wO2/wC))+((H2/100)*(wO2/(wH2*2))))//Minimum air in kg per kg oil
aa=((100+eO2)/100)*mma//Actual air supplied in kg per kg oil
q=((bhp*(4500/427))/(nth/100))//Heat supplied in kcal/min
mf=(q/CV)//Mass of fuel supplied in kg/min
ma=(aa*mf)//Mass of air supplied in kg/min

//Output
printf('The weight of air is %3.2f kg/min',ma)
