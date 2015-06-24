clc
clear
//Initalization of variables
J=778
o2=12.5
theo=0.95
N=56.5
R0=1545
T=540 //R
p=14 //psia
LHV=2368089 //Btu/lb
ther=39.4
iep=0.78
ve=0.8
//calculations
Ar=o2/0.21 *theo
vol=N*R0*T/(144*p)
hv=(LHV -17730)/LHV
ithep=iep*ther
pd=ithep/100 *ve *100.5
mep=J*pd
//results
printf("Indicated mep = %d lb/sq ft",mep)
