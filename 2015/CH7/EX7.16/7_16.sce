
clc
//initialisation of variables
clear
uw=2.5
aw=127.82
to=34 //temp in degrees
tr=26 //temp in degrees
ur=1.5
ar=90
ag=8.68
clf1=100
pvwo=0.037782
p=1.013 //pressure in bar
a=6.66*10^-4
phi=0.5
//CALCULATIONS
shgw=uw*aw*(to-tr)
shgr=ur*ar*(to-tr)
sg=ag*clf1
pvo=pvwo-(p*a*(to-tr))
wo=0.622*(pvo/(p-pvo))
ho=(1.005*to+wo*(2500+1.86*to))
pvr=phi*pvo
wr1=0.622*(pvr/(p-pvr))
hr=(1.005*tr+wr1*(2500+1.86*tr))
//RESULTS
disp('recommended indoor conditions are25.5-26.7 degrees and 50% rh and outdoor conditions are  26 degrees and 50%rh')
disp('area of the roof is 90 m*m')
disp('overall heat transfer coefficients are2.5 w/m*m')
printf('\nsensible heat gain through walls is %2f',shgw)
printf('\nsensible heat gain through roofs is %2f',shgr)
printf('\nsensible heat gain through windows is %2f',sg)
disp('sensible heat per adult male is 67.5w and latent heat is 55.7w')
printf('\nenthalpy rate o is %2f',ho)
printf('\nenthalpy rate r is %2f',hr)
disp('volume of air infiltered is 1.628 m*m*m/min')
disp('latent heat gain is 902.4w')
disp('sensible heat gain is 257.2w')
disp('room sensible heat factor is 0.803') 
