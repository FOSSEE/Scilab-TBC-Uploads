clc
clear
//Input data
C=12//Molecular weight of carbon
H2=2//Molecular weght of H2
O2=32//Molecular weight of O2

//Calculations
C7H16=(7*C+8*H2)//Molecular weight of C7H16
O2x=(11*O2)//Molecular weight of 22O2
wt=(O2x/C7H16)*(100/23.2)//Weight of air in kg per kg of fuel
//Now in actual experiment, we have
//1[C7H16] +x[O2] +...[N2] = a[CO2] +8[H2O] +a[O2] +...[N2]
//This is the new equation written in volumes. The volumes of CO2 and O2 being equal, with no CO present, and the usual assumption that all the hydrogen is burnt to H2O
//Now, if all the carbon is burnt, we must have 7 mols of CO2
x=(7+4+7)//Total number of mols from CO2,H2O and O2 terms respectively
W=((x*O2)/100)*(100/23.2)//Weight of air in kg per kg of fuel

//Output
printf('The weight of air is %3.1f kg per kg of fuel which would just suffice for theoretically complete combustion \n The ratio of air to fuel by weight as actually supplied is %3.1f kg of air per kg of fuel',wt,W)
