clc
//initialisation of  variables
h3=174 //kj/kg
h4=178.02 //kj/kg
ieff=0.50 //isentropic efficiency of compression
wt=903.8 //kj/kg
feff=0.75 //furnace efficiency
ieeff=0.85//isentropic expansion efficiency
wp=4.02 //kj/kg
h1=2801 //kj/kg
//CALCULATIONS
hx=((h4-h3)/0.5)+174
wr=wp/ieff
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
