//Example 3.25
clear;
clc;

//Given
delH1=-242;//heat of reaction (i) in kJ mol^-1
delH2=-640;//heat of reaction (ii) in kJ mol^-1
delH3=-540;//heat of reaction (iii) in kJ mol^-1

//To determine enthalpy changes per kg
nH2=200;//number of moles of hydrogen in 1 kg gas (mol)
nO2=31.25;//number of moles of oxygen in 1 kg gas (mol)
nCH3OH=31.25;////number of moles of methanol in 1 kg (mol)
nF2=26.3;//number of moles of flourine in 1 kg gas (mol)

delH11=delH1*(2*nO2);//enthalpy of reaction (i)
mprintf('enthalpy of reaction (i) = %i kJ',delH11);

delH22=delH2*(20.8);//enthalpy of reaction (ii)
mprintf('\n enthalpy of reaction (ii) = %i kJ',delH22);

delH33=delH3*(nF2);//enthalpy of reaction (iii)
mprintf('\n enthalpy of reaction (iii) = %i kJ',delH33);
//end