clc
//initialisation of variables
ps2=0.008129 //under 4 degree temp in bar
ps3=0.047534 //under32 degree temp in bar
v=0.75 //volume in m*m*m
vf=0.001
h1=50.4 //under 12 degree temp in kj/kg
h2=16.8 //kj/kg
hf3=16.8 //kj/kg
hfg3=2492.1 //kj/kg
x3=0.98
vg3=157.27 //under 4 degree temparature
//CALCULATIONS
pr=ps3/ps2
mfr=v/vf
re=mfr*(h1-h2)
h3=hf3+(x3*hfg3)
mf3=re/(h3-h1)
vv=mf3*x3*vg3
//RESULTS
disp('pressures in flash chamber are ps2=0.008129 and ps3=0.047534')
printf('\npressure ratio is %2f',pr)
printf('\nthe refrigeration effect is %2fkj/kg',re)
printf('\namount of makeup water is %2fkg/min',mf3)
printf('\nvolume of water entering the ejector is %2fm*m*m/min',vv)
