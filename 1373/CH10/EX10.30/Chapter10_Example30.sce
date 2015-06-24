//Chapter-10, Example 10.30, Page 462
//=============================================================================
clc
clear

//INPUT DATA
A=30;//Total surface area in m^2
V=10;//Volume in m^3
Ts=1000;//Temperature of the furnace in degree C
p=2;//Total pressure in atm
ph2o=0.1;//Partial pressure of water vapour in atm
pco2=0.3;//Partial pressure of CO2

//CALCULATIONS
lms=(3.6*V)/A;//Mean beam length in m
pco2lms=(pco2*lms);//pco2lms in m.atm
eco2=0.16;//From Fig.10.23 on page no. 458
cco2=1.11;//From Fig.10.23 on page no. 458
cco2eco2=(cco2*eco2);//cco2eco2 value
ph2olms=(ph2o*lms);//ph2olms in m.atm
eh2o=0.12;//From Fig.10.24 on page no. 459
P=(p+ph2o)/2;//P value in atm
ch2o=1.43;//From Fig.10.26 on page no. 460
ch2oeh2o=(ch2o*eh2o);//ch2oeh2o value
P1=(ph2o/(ph2o+pco2));//Ratio of pressures
X=(pco2lms+ph2olms);//X value in m.atm
e=0.035;//Error value from Fig. 10.27 on page no.461
et=(cco2eco2+ch2oeh2o-e);//Total emissivity of the gaseous mixture 

//OUTPUT
mprintf('Emissivity of the gaseous mixture is %3.4f',et)

//=================================END OF PROGRAM==============================
