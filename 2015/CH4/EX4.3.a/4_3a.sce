clc
//initialisation of variables
h1=2801 //kj/kg
h3=867.5 //kj/kg
h4=1087 //kj/kg
ieff=0.50 //isentropic efficiency of compression
wt=903.8 //kj/kg
feff=0.75 //furnace efficiency
ieeff=0.85//isentropic expansion efficiency
//CALCULATIONS
hx=((h4-h3)/0.5)+867.5
wr=hx-h3
atu=ieeff*wt
hs=h1-hx
nwo=atu-wr
eff=nwo/hs
oeff=eff*feff
wrt=nwo/atu
ssc=3600/nwo
hr=3600/oeff
//RESULTS
printf('steam and heat rates are %2fkg/kwh and %2fkj/kwh',ssc,hr)

