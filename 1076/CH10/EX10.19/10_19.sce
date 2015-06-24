clear
clc

S=100
V=11
Z=V*V/S

SCA=1000
SCB=650

xa=S/SCA
xb=S/SCB
Xc=.5
xc=Xc/Z

X=round(((xa *(xb+xc))/(xa+xb+xc))*1000)/1000
FS=S/X
mprintf("Fault MVA= %.2f MVA",FS)
