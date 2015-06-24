clc;
warning('off');
printf("\n\n example2.7 - pg38");
// given
T=30+273.15;  //[K] temperature
pA=3;  //[atm] partial pressure of the component A
R=0.082057;  //[atm*m^3*/kmol*K] gas constant
// (a) using the equation Ca=n/V=pA/(R*T)
Cco2=pA/(R*T);
Cco2=Cco2*(44.01);
printf("\n\n (a) The concentarion of Co2 entering is %fkg/m^3",Cco2);
// (b) using the same equation as above
pN2=(0.79)*3;  //[atm] partial pressure of mitrogen(as nitrogen is 79% in air)
R=0.7302;  //[atm*ft^3*lb/mol*R] - gas constant
T=T*(1.8);  //[R] temperature
CN2=pN2/(R*T);
printf("\n\n (b) The concentration of N2 entering is %flbmol/ft^3",CN2);
// (c) using the same equation as above
nt=6;
nCo2=4;
nO2=2*(0.21);
nN2=2*(0.79);
yCo2=nCo2/nt;
yO2=nO2/nt;
yN2=nN2/nt;
R=82.057;  //[atm*cm^3/mol*K] - gas constant
T=30+273.15;  //[K] - temperature
pCo2=3*yCo2;
Cco2=pCo2/(R*T);
printf("\n\n (c) The concentartion of Co2 in the exit is %fmol/cm^3",Cco2);
// (d) using the same equation as above
R=8.3143;  //[kPa*m^3/kmol*K] - gas constant
pO2=3*(yO2)*(101.325);  //[kPa] - partial pressure
CO2=pO2/(R*T);
printf("\n\n (d) The concentration of O2 in the exit stream is %fkmol/m^3",CO2);




