

clc
//initialisation of variables
clear
Ls=20//ft
g=32.2//ft/sec^2
d1=6//in
d2=3//in
s1=30//rpm
r=0.5
f=0.01
ds=0.25
Hs=15//ft
ld=120//ft
Hd=100//ft
//CALCULATIONS
Ha=Ls*(d1/d2)^2*(2*%pi*s1/60)^2*r/g
hfs=(4*f*Ls*((d1/d2)^2*2*%pi*s1*r/60)^2)/(ds*2*g)
pb=Hs+Ha
pe=Hs-Ha
pm=Hs+hfs
nHa=ld*(d1/d2)^2*(2*%pi*s1/60)^2*r/g
hfd=(4*f*ld*((d1/d2)^2*2*%pi*s1*r/60)^2)/(ds*2*g)
npb=Hd+nHa
npe=Hd-nHa
npm=Hd+hfd
W=2*g*%pi*r*r/4
w1=W*(Hs+(2*hfs/3))
w2=W*(Hd+(2*hfd)/3)
hp=(w1+w2)*s1/33000
//RESULTS
printf ('Pressure at middle of stroke = %.2f ft of water',pm)
printf ('\n Horse power required= %.2f ',hp-0.05)
