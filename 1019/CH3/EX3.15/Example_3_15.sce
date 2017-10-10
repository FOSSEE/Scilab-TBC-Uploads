//Example 3.15
clear;
clc;

//Given
delHfC2H6=-84.5;//formation enthalpy of ethane in kJ
delHfC2H4=52.6;//formation enthalpy of ethene in kJ
delHfC2H2=226.9;//formation enthalpy of acetylene in kJ
delHfCH3CHO=-166.3;//formation enthalpy of ethanal in kJ
delHfH2Og=-241.8;//formation enthalpy of water(gas) in kJ
delHfCH3OHg=-201.3;//formation enthalpy of methanol(gas) in kJ
DHO2=-249.17;//half of the bond energy in oxygen molecule in kJ
DHH2=217.97;//half of the bond energy in hydrogen molecule in kJ
DHC=716.68;//energy required to obtain free carbon atom from graphite in kJ
DHCH=413;//bond energy of carbon hydrogen bond

//(i) To determine bond energy of carbon single bond
delHCC=(2*DHC)-delHfC2H6+(6*DHH2)-(6*DHCH);//bond energy of carbon single bond in kJ
mprintf('(i) bond energy of carbon single bond = %f kJ',delHCC);

//(ii) To determine bond energy of carbon double bond
delHC2C=(2*DHC)-delHfC2H4+(4*DHH2)-(4*DHCH);//bond energy of carbon double bond in kJ
mprintf('\n (ii) bond energy of carbon double bond = %f kJ',delHC2C);

//(iii) To determine bond energy of carbon triple bond
delHC3C=(2*DHC)-delHfC2H2+(2*DHH2)-(2*DHCH);//bond energy of carbon triple bond in kJ
mprintf('\n (iii) bond energy of carbon triple bond = %f kJ',delHC3C);

//(iv) To determine the bond energy of O-H bond
delHOH=((2*DHH2)-delHfH2Og-DHO2)/2;//bond energy of O-H bond in kJ
mprintf('\n (iv) bond energy of O-H bond = %f kJ',delHOH);

//(v) To determine the bond energy of C=O bond
delHC2O=(2*DHC)-(4*DHCH)-delHfCH3CHO+(delHCC*2);//bond energy of C=O bond in kJ
mprintf('\n (v) bond energy of C=O bond = %f kJ',delHC2O);

//(vi) To determine the bond energy of C-O bond
delHCO=DHC-(3*DHCH)-delHfCH3OHg+delHOH-DHO2;//bond energy of C-O bond in kJ
mprintf('\n (vi) bond energy of O-H bond = %f kJ',delHCO);
//end