clc
clear
//Input data
C=88.6//Composition of C in percent
H2=11.4//Composition of H2 in percent

//Calculations
w1=(C/100)//Weight per kg of fuel of C in kg
w2=(H2/100)//Weight per kg of fuel of H2 in kg
O1=(8/3)//Oxygen required per kg of constituent for C in kg
O2=8//Oxygen required per kg of constituent for H2 in kg
O11=(w1*O1)//Oxygen required per kg of fuel for C in kg
O22=(w2*O2)//Oxygen required per kg of fuel for H2 in kg
T=(O11+O22)//Total Oxygen required per kg of fuel in kg
P1=(w1+O11)//Composition of CO2 in kg
P2=(w2+O22)//Composition of H2O in kg
w=(T*(100/23))//Weight of air required in kg per kg of fuel

//Output
printf('The weight of air required for complete combustion of liquid fuel is %3.2f kg per kg of fuel \n \n The composition of CO2 is %3.3f kg \n The composition of H2O is %3.3f kg',w,P1,P2)
