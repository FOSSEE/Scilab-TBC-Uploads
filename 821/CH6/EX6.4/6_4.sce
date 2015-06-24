N2=0.79;//partial pressure of Nitrogen in air//
O2=0.21;//partial pressure of Oxygen in air//
AN2=0.015;//Absorption coefficient of N2//
AO2=0.028;//Absorption coefficient of O2//
l=22.4;
printf('Absorption coefficient being the solubility of the gas at partial pressure of 1atm of the gas,\nThe solubilities in mol per litre of the two gases are');
SN2=N2*AN2/l;//solubility of N2//
SO2=O2*AO2/l;//solubility of O2//
printf('\nSolubility of N2=SN2=%f=5.29*10^-4mol per litre.',SN2);
printf('\nSolubility of O2=SO2=%f=2.625*10^-4mol per litre',SO2);
VO2=(SO2*100)/(SN2+SO2);
printf('\nThe mole or Volume percent of O2=%f',VO2);
VN2=100-VO2;
printf('\nThe mole or volume percent of N2=%f',VN2);
