clc
clear
//Initialization of variables
ye=0.434
Pt=40.25 //kPa
xe=0.616
Pe1=22.9 //kPa
Pe2=29.6 //kPa
//calculations
ge= ye*Pt/(xe*Pe1)
gb=(1-ye)*Pt/((1-xe)*Pe2)
E= log10(ge) *(1+ (1-xe)*log(gb) /(xe*log(ge)))^2
B= log10(gb) *(1+ xe/(1-xe) *log(ge) /log(gb))^2
xe2=0.4
xb2=0.6
lnge2=E/(1+ E*xe2/(B*xb2))^2
lngb2=B/(1+ B*xb2/(E*xe2))^2
ge2=10^(lnge2)
gb2=10^(lngb2)
Pt1=ge2*Pe1
Pt2=gb2*Pe2
//results
printf("Total pressure in case 1  = %.2f kPa and in case 2 = %.2f kPa",Pt1, Pt2 )
