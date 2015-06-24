clc
//no 4.9 printed in the book....print mistake
//initialisation of variables
//for the mercury cycle
ha=360.025 //kj/kg
sa=0.50625 //kj/kgk
sfb=0.0961 //kj/kgk
sfgb=0.5334 //kj/kgk
hfb=38.05 //kj/kg
hfgb=294.02 //kj/kg
//for the steam cycle
h5=2801 //kj/kg
h3=163 //kj/kg
hb=264.2 //kj/kg
h1=2963 //kj/kg
s1=6.364 //kj/kgk
sf2=0.559 //kj/kgk
sfg2=7.715 //kj/kgk
qs=3916.2 //kj/kg
hf2=163 //kj/kg
hfg2=2409 //kj/kg
//CALCULATIONS
xb=(sa-sfb)/sfgb
hb=hfb+(xb*hfgb)
m1=(h5-h3)/(hb-hfb)
x2=(s1-sf2)/sfg2
h2=hf2+(x2*hfg2)
wn=m1*(ha-hb)+(h1-h2)
teff1=wn/qs
hx=ha-(0.8*(ha-hb))
hy=h1-(0.8*(h1-h2))
m2=(h5-h3)/(hx-hfb)
wo=m2*(ha-hx)+(h1-hy)
qs=m2*(ha-hfb)+(h1-h5)
teff2=wo/qs
//RESULTS
printf('thermal efficiency of steam cycle is %2f',teff1)
printf('\nwork output of plant is %2fkj/kg',wo)
printf('\nheat supplied is %2fkj/kg',qs)
printf('\nthermal efficiency of the plant is %2f',teff2)
