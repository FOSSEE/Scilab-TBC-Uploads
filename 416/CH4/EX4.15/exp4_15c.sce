clc
clear
disp("example 4 15")
p=30 //b.h.p of induction motor
f=50//line frequency
v=400//line voltage
e=0.85//effiency
pf=0.8 //power factor
i=p*746/(v*e*pf*sqrt(3))
i=i*complex(pf,-sind(acosd(pf)))
ccb=imag(i)/sqrt(3)
xc=v/ccb
c=10^6/(2*f*%pi*xc)
prl=((abs(i)^2-real(i)^2)/abs(i)^2)*100
printf(" current drawn by motor is %.1fA \n the line loss will be minimum when i is munimum.the minimum value of i is %dA and occurs when the capacitor bank draws a line current of %djA \n capacitor C %.2fuf \n percentage loss reduction %d",abs(i),i,imag(i),abs(c),prl)
