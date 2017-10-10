//Optical Fiber communication by A selvarajan
//example 14.1
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
N=256//no. of nodes
Lc=0.25//loss per coup;er in dB
Power_margin=30//power margin in dB
system_margin=6//system margin in dB
Average_loss=0.6//average loss in dB/Km
TxRX_powergain=32//transmitter to receiver power gain in dB
Avg_Tr_loss=0.5//average transmitter loss in dB/Km

//solution
Nc=log2(N)//since 2x2 couplers are used
Ns=N/2//each stage coupler
T_Nc=Nc*Ns//total no. of couplers
Total_Lc=Nc*Lc//total coupler loss in dB
Permissible_loss=TxRX_powergain-Total_Lc//permissible cable loss in dB
L=Permissible_loss/Avg_Tr_loss//Transmission distance in Km
mprintf("Transmission distance  =%fKm ",L)
