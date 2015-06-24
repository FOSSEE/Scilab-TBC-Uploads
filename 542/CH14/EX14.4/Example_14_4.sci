clear;
clc;
printf("\n Example 14.4");
//Making a mass balance, there are two inlet streams-
//the additional steam, say Gx kg/s
//the sea water feed, say Gy kg/s.

//The two outlet streams are
//distilled water product, 0.125 kg/s
//the concentrated sea water, 0.5 Gy kg/s

//Thus: (Gx + Gy) = (0.125 + 0.5 Gy) or (Gx + 0.5 Gy) = 0.125

//At 650 kN/m2, the total enthalpy of the steam = 2761 kJ/kg.

//Thus the energy in this stream = 2761Gx kW
//sea water enters at 344 K
//enthalpy of feed = [Gy × 4.18(344 − 273)] = 296.8Gy kW
printf("\n The enthalpy of the product is 439*0.125 = 54.9 kW");

//Making a balance
//(E + 2761Gx + 296.8Gy) = (211.3Gy + 54.9)
//(E + 2761Gx + 85.5Gy) = 54.9
//where E is the power supplied to the compressor
//(E + 2590Gx) = 33.5

//For a single-stage isentropic compression
//the work done in compressing a volume V1 of gas at pressure P1 to a volume V2 at pressure P2 is given by
P1 = 101.3;           //pressure is in kN/m^2
P2 = 120;             //pressure is in kN/m^2
dsteam_P1 = (18/22.4)*(273/374.1); //density of steam at 101.3 kN/m^2 and 374.1 K
//V1 = 0.5Gy/dsteam_P1 = 0.853 Gy m^3/sec
E = poly([0],'E');
E1 = roots(0.5*E-(P1*0.853)/(1.3-1)*[(P2/P1)^(0.3/1.3)-1]);
printf("\n E = %.1f kW/(kg/sec)",E1);

printf("\n As the compressor is 50 per cent efficient then E = %.1f kW/(kg/sec)",E1/0.5);
//E = 46*0.5*Gy = 23.0Gy kW
Gx = poly([0],'Gx');
Gx1 = roots(2761*Gx - 54.9 - 4.72*(33.5-2590*Gx));
printf("\n Gx = %.3f kg/sec",Gx1);













