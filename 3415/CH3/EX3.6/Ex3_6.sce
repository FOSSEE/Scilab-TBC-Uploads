//fiber optic communications by joseph c. palais
//example 3.6
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
lambda1=0.82e-6//wave length
lambda2=1.5e-6//wave length
L=10//link length in Km
deta_tau_by_L1=2.2*10^-9//delta tau by L for LED at 0.82um in ns/Km
deta_tau_by_L2=0.75*10^-9//delta tau by L for LED at 1.5um in ns/Km
deta_tau_by_L3=0.11*10^-9//delta tau by L for LD at 0.82um in ns/Km
deta_tau_by_L4=0.015*10^-9//delta tau by L for LD at 1.5um in ns/Km
//to find
f3dB1=1/(2*L*deta_tau_by_L1)//frequency in Hz  for LED at 0.82um 
f3dB2=1/(2*L*deta_tau_by_L2)//frequency in Hz  for LED at 1.5um 
f3dB3=1/(2*L*deta_tau_by_L3)//frequency in Hz  for LD at 0.82um 
f3dB4=1/(2*L*deta_tau_by_L4)//frequency in Hz  for LD at 1.5um 

f3dBE1=0.35/(L*deta_tau_by_L1)//Electrical frequency in Hz  for LED at 0.82um 
f3dBE2=0.35/(L*deta_tau_by_L2)//Electrical frequency in Hz  for LED at 1.5um 
f3dBE3=0.35/(L*deta_tau_by_L3)//Electrical frequency in Hz  for LD at 0.82um 
f3dBE4=0.35/(L*deta_tau_by_L4)//Electrical frequency in Hz  for LD at 1.5um 

RRZ1=0.35/(L*deta_tau_by_L1)//DaTA LIMIT FOR RETURN TO ZERO in bps  for LED at 0.82um 
RRZ2=0.35/(L*deta_tau_by_L2)//DaTA LIMIT FOR RETURN TO ZERO in bps  for LED at 1.5um 
RRZ3=0.35/(L*deta_tau_by_L3)//DaTA LIMIT FOR RETURN TO ZERO in bps  for LD at 0.82um 
RRZ4=0.35/(L*deta_tau_by_L4)//DaTA LIMIT FOR RETURN TO ZERO in bps for LD at 1.5um 

NRZ1=0.7/(L*deta_tau_by_L1)//DaTA LIMIT FOR Not RETURN TO ZERO in bps  for LED at 0.82um 
NRZ2=0.7/(L*deta_tau_by_L2)//DaTA LIMIT FOR Not RETURN TO ZERO in bps  for LED at 1.5um 
NRZ3=0.7/(L*deta_tau_by_L3)//DaTA LIMIT FOR Not RETURN TO ZERO in bps  for LD at 0.82um 
NRZ4=0.7/(L*deta_tau_by_L4)//DaTA LIMIT FOR Not RETURN TO ZERO in bps  for LD at 1.


mprintf(" for LED at 0.82um \nfrequency =%f MHz \nDaTA LIMIT FOR Not RETURN TO ZERO =%f Mbps \nElectrical 3dB frequency =%f MHz\nDaTA LIMIT FOR  RETURN TO ZERO =%f Mbps ",f3dB1/10^6,NRZ1/10^6,f3dBE1/10^6,RRZ1/10^6);
mprintf(" \n\nfor LED at 1.5um \nfrequency =%f MHz \nDaTA LIMIT FOR Not RETURN TO ZERO =%f Mbps \nElectrical 3dB frequency =%f MHz\nDaTA LIMIT FOR  RETURN TO ZERO =%f Mbps ",f3dB2/10^6,NRZ2/10^6,f3dBE2/10^6,RRZ2/10^6);
mprintf(" \n\nfor LD at 0.82um \nfrequency =%f MHz \nDaTA LIMIT FOR Not RETURN TO ZERO =%f Mbps \nElectrical 3dB frequency =%f MHz\nDaTA LIMIT FOR  RETURN TO ZERO =%f Mbps ",f3dB3/10^6,NRZ3/10^6,f3dBE3/10^6,RRZ3/10^6)
mprintf(" \n\nfor LD at 1.5um \nfrequency =%f GHz \nDaTA LIMIT FOR Not RETURN TO ZERO =%f Gbps \nElectrical 3dB frequency =%f GHz\nDaTA LIMIT FOR  RETURN TO ZERO =%f Gbps ",f3dB4/10^9,NRZ4/10^9,f3dBE4/10^9,RRZ4/10^9)
