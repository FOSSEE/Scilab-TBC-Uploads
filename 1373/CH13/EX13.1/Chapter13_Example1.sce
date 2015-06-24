//Chapter-13, Example 13.1, Page 544
//=============================================================================
clc
clear

//INPUT DATA
ro2=0.21;//Ratio of O2 in the mixture  
rn2=0.79;//Ratio of N2 in the mixture  
T=(25+273);//Temperature of container in degree C
p=1;//Total pressure in atm

//CALCULATIONS
Co2=(ro2*10^5)/(8314*T);//Molar concentration of O2 in K.mol/m^3
Cn2=(rn2*10^5)/(8314*T);//Molar concentration of N2 in K.mol/m^3
po2=(32*Co2);//Mass density in kg/m^3
pn2=(28*Cn2);//Mass density in kg/m^3
p=(po2+pn2);//Overall mass density in kg/m^3
mo2=(po2/p);//Mass fraction of O2
mn2=(pn2/p);//Mass fraction of N2
M=(ro2*32)+(rn2*28);//Average molecular weight 

//OUTPUT
mprintf('Molar concentration of O2 is %3.4f K.mol/m^3 \n Molar concentration of N2 is %3.3f K.mol/m^3 \n Mass density of O2 is %3.3f kg/m^3 \n Mass density of N2 is %3.3f kg/m^3 \n Mole fraction of O2 is %3.2f \n Mole fraction of N2 is %3.2f \n Mass fraction of O2 is %3.3f \n Mass fraction of N2 is %3.3f \n Average molecular weight is %3.2f',Co2,Cn2,po2,pn2,ro2,rn2,mo2,mn2,M)

//=================================END OF PROGRAM==============================
