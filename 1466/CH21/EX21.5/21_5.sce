
clc
//initialisation of variables
d1=9//in
d2=6//in
Ls=40//ft
g=32.2//ft/sec^2
s1=20//rpm
r=7.5/12
Hs=10//ft
k=0.125
f=0.01
ls1=35//ft
ds=0.5
lv=0.5//ft
//CALCULATIONS
Ha=(d1/d2)^2*Ls*(2*%pi*s1/60)^2*r/g
tph=Hs+Ha
nHa=Ha*(1+k)
ntph=Hs+nHa
vs=(d1/d2)^2*2*r*s1/60
hf=4*f*ls1*vs*vs/(ds*2*g)
nHa1=((d1/d2)^2*lv*(2*%pi*s1/60)*r*2.1)/(g)
tpc=Hs+nHa1+hf
nHa2=nHa1*(1+(k))*10
tpc1=Hs+nHa2+hf
//RESULTS
printf ('Total pressure head in cylinder= %.2f ft of water below atm',tph)
printf ('\n Total pressure head in cylinder = %.2f ft of water below atm',ntph)
printf ('\n Total pressure head in cylinder = %.3f ft of water below atm',tpc)
printf ('\n Total pressure head in cylinder = %.3f ft of water below atm',tpc1)

//ANSWER for 3rd question is wrong in the textbook
