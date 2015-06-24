//fiber optic communications by joseph c. palais
//example 3.5
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
lambda1=0.82e-6//wave length
lambda2=1.5e-6//wave length

deta_tau_by_L1=2.2*10^-9//delta tau by L for LED at 0.82um in ns/Km
deta_tau_by_L2=0.75*10^-9//delta tau by L for LED at 1.5um in ns/Km
deta_tau_by_L3=0.11*10^-9//delta tau by L for LD at 0.82um in ns/Km
deta_tau_by_L4=0.015*10^-9//delta tau by L for LD at 1.5um in ns/Km
//to find
f3dB1=1/(2*deta_tau_by_L1)//frequency length in Hzx Km  for LED at 0.82um 
f3dB2=1/(2*deta_tau_by_L2)//frequency length in Hzx Km  for LED at 1.5um 
f3dB3=1/(2*deta_tau_by_L3)//frequency length in Hzx Km  for LD at 0.82um 
f3dB4=1/(2*deta_tau_by_L4)//frequency length in Hzx Km  for LD at 1.5um 

f3dBE1=0.35/(deta_tau_by_L1)//Electrical frequency length in Hzx Km  for LED at 0.82um 
f3dBE2=0.35/(deta_tau_by_L2)//Electrical frequency length in Hzx Km  for LED at 1.5um 
f3dBE3=0.35/(deta_tau_by_L3)//Electrical frequency length in Hzx Km  for LD at 0.82um 
f3dBE4=0.35/(deta_tau_by_L4)//Electrical frequency length in Hzx Km  for LD at 1.5um 

RRZ1=0.35/(deta_tau_by_L1)//Rate length FOR RETURN TO ZERO in bpsx Km  for LED at 0.82um 
RRZ2=0.35/(deta_tau_by_L2)//Rate length FOR RETURN TO ZERO in bpsx Km  for LED at 1.5um 
RRZ3=0.35/(deta_tau_by_L3)//Rate length FOR RETURN TO ZERO in bpsx Km  for LD at 0.82um 
RRZ4=0.35/(deta_tau_by_L4)//Rate length FOR RETURN TO ZERO in bpsx Km for LD at 1.5um 

NRZ1=0.7/(deta_tau_by_L1)//Rate length FOR RETURN Not TO ZERO in bpsx Km  for LED at 0.82um 
NRZ2=0.7/(deta_tau_by_L2)//Rate length FOR RETURN Not TO ZERO in bpsx Km  for LED at 1.5um 
NRZ3=0.7/(deta_tau_by_L3)//Rate length FOR RETURN Not TO ZERO in bpsx Km  for LD at 0.82um 
NRZ4=0.7/(deta_tau_by_L4)//Rate length FOR RETURN Not TO ZERO in bpsx Km  for LD at 1.


mprintf(" for LED at 0.82um \n Optic frequency length product =%f GHz. Km \nRate length product FOR Not RETURN TO ZERO =%f Gbps. Km \nElectrical 3dB frequency length product =%f GHz. Km\nRate length product FOR  RETURN TO ZERO =%f Gbps.Km ",f3dB1/10^9,NRZ1/10^9,f3dBE1/10^9,RRZ1/10^9);
mprintf(" \n\nfor LED at 1.5um \n Optic frequency length product =%f GHz. Km \nRate length product FOR Not RETURN TO ZERO =%f Gbps. Km \nElectrical 3dB frequency length product =%f GHz. Km\nRate length product FOR  RETURN TO ZERO =%f Gbps.Km ",f3dB2/10^9,NRZ2/10^9,f3dBE2/10^9,RRZ2/10^9);
mprintf(" \n\nfor LD at 0.82um \n Optic frequency length product =%f GHz. Km \nRate length product FOR Not RETURN TO ZERO =%f Gbps. Km \nElectrical 3dB frequency length product =%f GHz. Km\nRate length product FOR  RETURN TO ZERO =%f Gbps.Km ",f3dB3/10^9,NRZ3/10^9,f3dBE3/10^9,RRZ3/10^9);
mprintf(" \n\nfor LD at 1.5um \n Optic frequency length product =%f GHz. Km \nRate length product FOR Not RETURN TO ZERO =%f Gbps. Km \nElectrical 3dB frequency length product =%f GHz. Km\nRate length product FOR  RETURN TO ZERO =%f Gbps.Km ",f3dB4/10^9,NRZ4/10^9,f3dBE4/10^9,RRZ4/10^9);
