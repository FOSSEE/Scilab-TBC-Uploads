clc
//initialisation of variables
u=250 //blade speed in m/s
theta=80 //angle in degrees
alpha=20 //angle in degrees
oed=786.7 //overall enthalpic drop in kj/kg
sp=3000 //rotational speed of an impulse turbine wheel in revolutions
p=6000 //power developed in kw
rf=1.04 //reheat factor
ie=2993.4 //kj/kg
vs=9.28 //m*m*m/kg
pi=(22/7)
//CALCULATIONS
ci=(u*sin(100*(pi/180)))/sin(60*(pi/180))
x=(2*ci*cos(20*(pi/180)))-u //x=cwi-cwo
wd=x*u*10^-3
ed=wd*10
teff=ed/oed
seff=teff/rf
m=p/ed
ae=ie-ed
cf=ci*sin(20*(pi/180))
a=(m*vs)/cf
dm=(60*u)/(pi*sp)
h=a/(pi*dm)
//RESULTS
printf('enthalpy drop is %2fkj/kg',ed)
printf('\nturbine efficiency is %2f',teff)
printf('\nstage efficiency is %2f',seff)
printf('\nmass flow of steam is %2fkg/s',m)
printf('\nblade height us %2fm',h)
