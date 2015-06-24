//free energy changes in the system

clear;
clc;

printf("\t Example 18.4\n");

//(a)
GCO2=-394.4;//free energy of formation of CO2, kJ/mol
GH2O=-237.2;//free energy of formation of H2O, kJ/mol
GCH4=-50.8;//free energy of formation of CH4, kJ/mol
GO2=0;//free energy of formation of O2, kJ/mol

deltaGrxn=(GCO2+GH2O*2)-(GCH4+2*GO2);//standard free energy change of the reaction, kJ/mol

printf("\t (a) the standard free energy change of reaction is : %4.1f kJ/mol\n",deltaGrxn);

//(b)
GMg=0;//free energy of formation of Mg, kJ/mol
GMgO=-569.6;//free energy of formation of MgO, kJ/mol
GO2=0;//free energy of formation of O2, kJ/mol

deltaGrxn=(GO2+GMg*2)-(2*GMgO);//standard free energy change of the reaction, kJ/mol

printf("\t (b) the standard free energy change of reaction is : %4.0f kJ/mol\n",deltaGrxn);

//End
