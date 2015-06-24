clc
clear
disp("example 4 16")
po=666.66 //power
f=50 //frequency
v=400 //voltage
pf=0.8 ;p=-1//power factor
pf2=0.95;p2=-1//improved power factor
vc=2200 //capacitor voltage 
rc=vc
il=po*1000/(v*pf*sqrt(3))
il1=il*(complex(pf,p*sind(acosd(pf))))
i2c=il*pf
tad=tand(acosd(pf2))
i2=complex(i2c,i2c*tad*p2)
printf(" load current i1 %.2f%.2fA \n load current current on improved power factor %.2f%.2fjA",il1,imag(il1),i2,imag(i2))
disp("(a)")
ic=abs(il1-i2)
ilc=ic*v/vc
pic=ilc/sqrt(3)
xc=vc/pic
ca=10^6/(2*%pi*f*xc)
printf(" line current of %dV capacitor bank %.2fA\n line current of %d capacitor bank %.2fA \n phase current of capacitor bank %.2fA \n reactance %.2f \n capacitance %.2fF*10^(-6)",v,ic,vc,ilc,pic,xc,ca)
disp("(b)")
kr=3*vc*pic/1000
printf(" kVA rating %.1fkVA \n kVA rating of transformer to convert %dV to %dV will be the same as the kVA rating of capacitor bank",kr,v,vc)
pl=100*(abs(il1)^2-abs(i2)^2)/abs(il1)^2
printf("percentage reduction in losses %d percent",pl)
disp("(d)")
pi=ic/sqrt(3)
xcc=v/pi
cc=1*10^6/(2*%pi*f*xcc)
roc=ca/cc
printf(" phase current %.1fA \n reactance %.2fohm \n capasitance %.2f*10^-6F \n ratio of capacitance %.3f",pi,xcc,cc,roc)