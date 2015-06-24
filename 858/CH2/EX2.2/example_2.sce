clc
clear 
printf("example 2.2 page number 71\n\n")

//to find volumetric composition,partial pressue of each gas and total pressure of mixture

nCO2=2/44;     //moles of CO2
nO2=4/32;     //moles of O2
nCH4=1.5/16;   //moles of CH4

total_moles=nCO2+nO2+nCH4;
yCO2=nCO2/total_moles;
yO2=nO2/total_moles;
yCH4=nCH4/total_moles;

printf (" Composition of mixture = \nCH4 = %f \nO2 = %f \n CO2 = %f \n\n",yCH4,yO2,yCO2)

pCO2=nCO2*8.314*273/(6*10^-3);
pO2=nO2*8.314*273/(6*10^-3);
pCH4=nCH4*8.314*273/(6*10^-3);

printf ("pressure of CH4 = %f kPa \npressure of O2 = %f kPa\n pressure of CO2 =%f kPa\n\n",pCH4*10^-3,pO2*10^-3,pCO2*10^-3)

total_pressure=pCO2+pCH4+pO2;
printf ("total pressure =  %f Kpa",total_pressure*10^-3)
