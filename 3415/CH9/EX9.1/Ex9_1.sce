//fiber optic communications by joseph c. palais
//example 9.1
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
LE=1//coupler has excess loss of 1dB
P2byP1=(10^(-LE/10))/2//since P2/P1 is equal to P3/p1 since spliting ratio is 1:1
Ltap=-10*log10(P2byP1)//Taploss in dB
Lthp=-10*log10(P2byP1)//throughput Loss in dB
Ltap1=Ltap-LE//excess loss of 1 dB
Lthp2=Lthp-LE//excess loss of 1dB
mprintf('\nThe portion of the input power reaching output for splitting ratio 1:1 is =%f',P2byP1)

