//edsig chain dirve
clc
//soltuion
//given
RP=15000//W//rated power
N1=1000//rpm
N2=350//rpm
VR=N1/N2
//ref table 21.5,numbr of teeth on smaller sprocket is T1=25
T1=25
T2=T1*N1/N2
K1=1.5//load factor
K2=1//lubricaiton factor
K3=1.25//rating factor
Ks=K1*K2*K3//service factor
DP=Ks*RP//design power
//from table 21.4,corrs to N1=1000rpm,power transmittd for chain 12 is 15.65 kW per strand,
//therefore chain 12 with 2 strands is used tot ransmit power
//using table 21.1
p=19.05//pitch//mm
d=12.07//mm//roller dia
w=11.68//mm//min width of roller
Wb=59000//N
//d1=p*cosec(180/T1)=0.152//m
d1=0.152//m
//d2=p*cosec(180/T2)=0.436//m
d2=0.436//m
printf("the itch circle dia of smalla nd large sprocket is,%f mm\n,%f mm\n",d1,d2)
v1=%pi*d1*N1/60//m/s
W=RP/v1//N
Fs=Wb/W
c=30*p//mm//min center dis
x=c-4//correct centre dis
K=(T1+T2)/2+(2*x/p)+[(T1-T2)/(2*%pi)]^2*p/x//mm
L=K*p
printf("the length of chian is,%f mm\n",L)