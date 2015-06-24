clc;
//page no 573
//prob no. 16.6
//ERP of Tx statn=17W
ERP=17;
//Determnation of EIRP
ERP_dBm=10*log10(ERP/10^-3);//Converting ERP in dBm
EIRP_dBm=ERP_dBm+2.14;//Converting ERP in EIRP
disp('dBm',EIRP_dBm,'EIRP in dBm is expressed as');