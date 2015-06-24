//mass of an compound produced from certain mass of a given compound

clear;
clc;

printf("\t Example 3.13\n");

CO2=44.01;//mol. mass of CO2, g
Glucose=180.2;//mol. mass of Glucose, g
massGlucose=856;//given mass of Glucose, g
moleGlucose=massGlucose/Glucose;// moles of glucose
moleCO2=moleGlucose*6;//1 mole glucose gives 6 moles of CO2
massCO2=moleCO2*CO2;// mass of CO2, g

printf("\t the mass of CO2 is : %1.2f*10^3 g\n",massCO2*10^-3);

//End
