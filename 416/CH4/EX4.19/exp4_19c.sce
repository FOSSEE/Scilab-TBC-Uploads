clc
clear
kw=100  //let kw=100kw
pf=0.6 //power foctor
pf2=0.8 //power factor
kvar=kw*tand(acosd(pf))
kvar2=kw*tand(acosd(pf2))
ckar=((kvar-kvar2))/10
ck=round(ckar)*10
disp("example 4 19")
printf("capacitor kVAR required for %dkW\n load for same power factor improvement %dKVAR",round(ckar),ck)
pff=0.95:-0.05:0.4
pff=200*pff
n=size(pff)
z=zeros(1,n(2))
