clc
//initialisation of variables
ha=360.025 //kj/kg
hfb=38.05 //kj/kg
hb=264.2 //kj/kg
h1=2963 //kj/kg
h2=1974.6 //kj/kg
h3=163 //kj/kg
h4=1087 //kj/kg
h=1714 //kj/kg
//CALCULATIONS
m=h/(hb-hfb)
wo=7.58*(ha-hb)+(h1-h2)
qs=7.58*(ha-hfb)+(h4-h3)+(h1-h)
teff=(wo/qs)
//RESULTS
printf('thermal efficiency is %2f',teff)
