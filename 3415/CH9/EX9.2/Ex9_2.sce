//fiber optic communications by joseph c. palais
//example 9.2
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
terminals_in=10//initial terminals
terminals_ex=11//extended terminals
S_ratio=9//splitting ratio
ELT=1//excess losss tee coupler in dB
connector_loss=1//connector loss in dB
//to find
P2byP1=10^-0.1*0.9//P2/P1 for spliting ratio 9:1
lthp=-10*log10(P2byP1)//through loss loss for a 9:1 coupler having 1dB of excess loss
tee_adlos=lthp+2//loss of one directional coupler plus the loss of two connectors
star_adlos1= -10*log10(1/terminals_in)//Loss for star network with 10 terminals in dB
star_adlos2= -10*log10(1/terminals_ex)//Loss for star network with 11 terminals in dB
d2=star_adlos2 - star_adlos1//Change in loss with change in no. of terminals from 10-11
mprintf('Throughput losses for a 9:1 coupler having 1dB of excess loss =%fdB',lthp)
mprintf('\nAdded losses for star with 10 terminals =%fdB',star_adlos1)
mprintf('\nAdded losses for star with 11 terminals =%fdB',star_adlos2)
mprintf('\nDifference in star added losses=%fdB',d2)
