// Ex 12 Page 353

clc;clear;close;
// Given
VRY=200*expm(%i*0);//V
VYB=200*expm(%i*-120*%pi/180);//V
VBR=200*expm(%i*120*%pi/180);//V


ZA=10*expm(%i*60*%pi/180);//ohm
ZB=10*expm(%i*0*%pi/180);//ohm
ZC=10*expm(%i*60*%pi/180);//ohm

//Phase current
IRY=VRY/ZA;//A
IYB=VYB/ZB;//A
IBR=VBR/ZC;//A

IR=IRY-IBR;//A
PVA=conj(VRY)*IR;//W
printf("Wattmeter W1 reading=%.f W",real(PVA))
IB=IBR-IYB;//A
PVB=conj(-VYB)*IB;//W
printf("\n Wattmeter W2 reading=%.f W or %.f kW",real(PVB),real(PVB)/1000)
