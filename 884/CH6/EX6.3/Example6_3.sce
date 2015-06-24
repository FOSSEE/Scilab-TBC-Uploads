//heat produced in a reaction

clear;
clc;

printf("\t Example 6.3\n");

mSO2=74.2;//mass in g
SO2=64.07;//molar mass in g
nSO2=mSO2/SO2;//moles of SO2
deltaH=-99.1;//heat produced for 1 mol, in kJ/mol
Hprod=deltaH*nSO2;//heat produced in this case, in kJ/mol

printf("\t the heat produced in a reaction is : %4.0f kJ\n",Hprod);

//End
