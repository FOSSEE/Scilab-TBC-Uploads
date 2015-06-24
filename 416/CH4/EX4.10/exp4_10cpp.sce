clc
clear
disp("example 4 10")
v=400//voltage
i=25///current
pf=0.8//at power factor
pf2=0.9//over all power factor
kw=v*i*pf*sqrt(3)/1000
printf("kw rating of induction motor %.2fkW",kw)
dm=acosd(pf)
rp=kw*tand(dm)
printf("\n power factor angle %.2f \n reactive power %.2fkVR",dm,rp)
fdm=acosd(pf2)
rp2=kw*tand(fdm)
printf("\n final power factor %.2f \n final reactance power %.2fkVR",fdm,rp2)
ckvb=rp-rp2
cc=ckvb*1000/(sqrt(3)*v)
vc=v/sqrt(3)
xc=vc/cc
f=50
cec=1*10^(6)/(xc*2*%pi*f)
printf("\n kvar rating of capacitor bank %.4f \n current through each capacitor %.2fA\n voltage across each capacitor %.2f \n reactance of each capacitor %.2fohm \n capacitance of each capacitance %.2fuf",ckvb,cc,vc,xc,cec)