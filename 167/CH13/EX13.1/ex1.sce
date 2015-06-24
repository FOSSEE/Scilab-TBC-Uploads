//example 1
//Mass and Mole Fractions of a Gas Mixture
clear
clc
m=20 //total mass of the mixture in kg
mfO2=3/m //mass fraction of oxygen
mfN2=5/m //mass fraction of nitrogen
mfCH4=12/m //mass fraction of methane
NO2=3/32 //no.of kilo moles of oxygen
NN2=5/28 // no.of kilo moles of nitrogen
NCH4=12/16 //no.of kilo moles of methane
N=NO2+NN2+NCH4//total no. of moles
yO2=NO2/N //mole fraction of O2
yN2=NN2/N //mole fraction of N2
yCH4=NCH4/N // mole fraction of CH4
Mm=m/N //average molar mass of gas in kg/kmol
printf("\n Mass fraction of oxygen is = %.2f. \n",mfO2);
printf("\n Mass fraction of Nitrogen is = %.2f. \n",mfN2);
printf("\n Mass fraction of Methane is = %.2f. \n",mfCH4);
printf("\n Mole fraction of Nitrogen is = %.3f. \n",yN2);
printf("\n Mole fraction of Oxygen is = %.3f. \n",yO2);
printf("\n Mole fraction of Methane is = %.3f. \n",yCH4);
printf("\n Average Molar mass of gas is = %.1f kg/mol. \n",Mm);