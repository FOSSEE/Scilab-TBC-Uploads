clc
clear
//Input data
C=88.1//Composition of C in percent
H2=10.7//Composition of H2 in percent
O2=1.2//Composition of O2 in percent

//Calculations
w1=(C/100)//Weight per kg of fuel of C in kg
w2=(H2/100)//Weight per kg of fuel of H2 in kg
w3=(O2/100)//Weight per kg of fuel of O2 in kg
O1=(8/3)//Oxygen required per kg of constituent for C in kg
O2=8//Oxygen required per kg of constituent for H2 in kg
O11=(w1*O1)//Oxygen required per kg of fuel for C in kg
O22=(w2*O2)//Oxygen required per kg of fuel for H2 in kg
T=(O11+O22-w3)//Total Oxygen required per kg of fuel in kg
P1=(w1+O11)//Composition of CO2 in kg
P2=(w2+O22)//Composition of H2O in kg
w=(T*(100/23))//Weight of air required in kg per kg of fuel
wN2=(w*(77/100))//Weight of N2 in 'w' kg of fuel in kg
T1=(P1+P2+wN2)//Total weight of all products of combustion in kg
pCO2=(P1/T1)*100//Percentage composition of CO2 by weight
pH2O=(P2/T1)*100//Percentage composition of H2O by weight
pN2=(wN2/T1)*100//Percentage composition of N2 by weight

//Output
printf('The weight of air required to burn one kg of the fuel is %3.1f kg \n The composition of products of combustion by weight is %3.2f percent of CO2, %3.2f percent of H2O and %3.2f percent of N2',w,pCO2,pH2O,pN2)
