clear
clc

S=30
SF=1000
V1=33
V2=132
Z1=V1*V1/S
I2=S*1e6/(sqrt(3)*V2*1e3)


x1g=%i*S/SF
x2g=x1g*2/3
x0g=x1g/3
r0g=60/Z1
z0g=r0g+x0g
xt=%i *.1

X1=xt+x1g
X2=xt+x2g
X0=xt

FMVAa=round(abs(S/X1)*100)/100
IFa=abs(1/X1)* I2
mprintf("\n(a)3 phase fault Fault MVA=%.2f MVA, Fault Current=%.2f A",FMVAa,IFa)

IFb=abs(3/(X1+X2+X0))* I2
FMVAb=IFb * sqrt(3) * V2 * 1e-3
mprintf("\n(b)single line to ground fault Fault MVA=%.2f MVA, Fault Current=%.2f A",FMVAb,IFb)

IFc=abs(sqrt(3)/(X1+X2))* I2
FMVAc=IFc * sqrt(3) * V2 * 1e-3
mprintf("\n(c)L-L  Fault MVA=%.2f MVA, Fault Current=%.1f A",FMVAc,IFc)

IFd=abs(1/(X1+(X2*X0/(X2+X0))))* I2
FMVAd=IFd * sqrt(3) * V2 * 1e-3
mprintf("\n(d)L-L-G fault Fault MVA=%.2f MVA, Fault Current=%.2f A",FMVAd,IFd)

