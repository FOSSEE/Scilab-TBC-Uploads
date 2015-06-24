//fiber optic communications by joseph c. palais
//example 12.2
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
 clear all
//given
//from example 12.1
lambda=0.82//wavelength in um
ER=10^-9//Error rate
datarate=100//dta rate for RZ system in Mbps
NRZ_Qpl=-63//powerl level for NRZ in dBm
NRZ_TL=-36//thermal limit for NRZ in dBm
//to find
RZ_Qpl=NRZ_Qpl+3//powerl level for RZ in dBm from fig 12.4
RZ_TL=NRZ_TL+3//thermal limit for RZ in dBm from fig 12.4
Avg_NRZ_Qpl=NRZ_Qpl-3//Average for NRZ is half so 3db LESS in dBm
Avg_NRZ_TL=NRZ_TL-3//Average for NRZ is half so 3db LESS in dBm
Avg_RZ_Qpl=RZ_Qpl-6//Average for RZ is ONE FOURTH so 6db LESS in dBm
Avg_RZ_TL=RZ_TL-6//Average for RZ is ONE FOURTH so 6db LESS in dBm

mprintf("Average Powerl level for NRZ=%fdBm",Avg_NRZ_Qpl)
mprintf("\nAverage Thermal limit for NRZ =%fdBm",Avg_NRZ_TL)
mprintf("\nAverage Power level for RZ=%fdBm",Avg_RZ_Qpl)
mprintf("\nAverage Thermal limit for RZ =%fdBm",Avg_RZ_TL)
