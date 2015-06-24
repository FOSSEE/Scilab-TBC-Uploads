//Chapter-9, Example 9.8, Page 391
//=============================================================================
clc
clear

//INPUT DATA
e1=0.3//Emissivity of glass upto 3 micro meter
e2=0.9;//Emissivity of glass above 3 micro meter
t=0.8;//Transmittivity of glass in the region except in the wave length region [0.4,3]

//CALCULATIONS
E=(5.67*10^-8*5780^4)/10^6;//Emissive power in MW/m^2
F1=0.10503;//From Table 9.2 on page no.385
F2=0.97644;//From Table 9.2 on page no.385
I=(E*10^6*(F2-F1))/10^6;//Total incident radiation in MW/m^2
T=(t*I);//Total radiation transmitted in MW/m^2
t1=(e1*I);//Absorbed radiation in MW/m^2 in wavelength  [0.4,3] micro meter
t2=(e1*E*F1);//Absorbed radiation in MW/m^2 in wavelength not in the range [0.4,3] micro meter
t3=(e2*(1-F2)*E);//Absorbed radiation in MW/m^2 in wavelength greater than 3 micro meter
R=(t1+t2+t3);//Total radiation absorbed in MW/m^2

//OUTPUT
mprintf('Total radiation transmitted is %3.2f MW/m^2 \nTotal radiation absorbed is %3.2f MW/m^2',T,R)

//=================================END OF PROGRAM==============================
