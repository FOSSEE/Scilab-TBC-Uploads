clc
//initialisation of variables
ha=359.11 //under 10 bar pressure in kj/kg
sa=0.5089 //under 10 bar pressure in kj/kgk
sfb=0.0870 //under 0.08 bar pressure in kj/kgk
sfgb=0.57 //under 0.08 bar pressure in kj/kgk
hfb=33.21 //under 0.08 bar pressure in kj/kg
hfgb=294.7 //under 0.08 bar pressure in kj/kg
h=1840.5 //kj/kg
h1=3350 //under 25 bar pressure and 723 k in kj/kg
s1=7.183 //under 25 bar pressure and 723 k in kj/kgk
sf2=0.476 //under 25 bar pressure and 723 k in kj/kgk
sfg2=7.918 //under 25 bar pressure and 723 k in kj/kgk
hf2=138 //under 25 bar pressure and 723 ki n kj/kg
hfg2=2423 //under 25 bar pressure and 723 k in kj/kg
h5=964 //kj/kg
//CALCULATIONS
xb=(sa-sfb)/(sfgb)
hb=hfb+(xb*hfgb)
m=h/(hb-hfb)
x2=(s1-sf2)/sfg2
h2=hf2+(x2*hfg2)
wo=8.47*(ha-hb)+(h1-h2)
qs=8.47*(ha-hfb)+(h5-138)+(h1-2802.5)
teff=(wo/qs)*100
//RESULTS
printf('work output is %2f',wo) //textbook ans slightly varies
printf('\nheat supplied to the plant is %2f',qs)
printf('\nthermal efficiency is %2f',teff)

