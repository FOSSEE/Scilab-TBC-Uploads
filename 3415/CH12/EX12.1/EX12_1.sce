//fiber optic communications by joseph c. palais
//example 12.1
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
 clear all
//given
lambda=0.82//wavelength in um
ER=10^-9//Error rate
datarate=100//dta rate for RZ system in Mbps
NRZ_Qpl=-63//powerl level for NRZ in dBm from figure 12.4
NRZ_TL=-36//thermal limit for NRZ in dBm from figure 12.4
//to find
RZ_Qpl=NRZ_Qpl+3//powerl level for RZ in dBm 
RZ_TL=NRZ_TL+3//thermal limit for RZ in dBm 
//mprintf("Power level for NRZ=%fdBm",NRZ_Qpl)
//mprintf("\nThermal limit for NRZ =%fdBm",NRZ_TL)
mprintf("Power level for RZ=%fdBm",RZ_Qpl)
mprintf("\nThermal limit for RZ =%fdBm",RZ_TL)
