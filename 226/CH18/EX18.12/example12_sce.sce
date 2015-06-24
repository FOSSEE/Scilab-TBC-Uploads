//chapter 18
//example 18.12
//page 792
printf("\n")
printf("given")
f=50*10^3;Vo=12;Vf=.7;Vi=30;Vsat=1;Io=500*10^-3;Vr=100*10^-3;
T=1/f
t=(Vo+Vf)/(Vi-Vsat-Vo)
toff=T/1.75
ton=T-toff
Ip=2*Io
L1=((Vi-Vsat-Vo)*ton)/Ip
C1=Ip/(8*f*Vr)