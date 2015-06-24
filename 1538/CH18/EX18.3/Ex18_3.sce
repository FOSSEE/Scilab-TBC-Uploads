//example-18.3
//page no- 537
//given
//conductivity of material
sigma=0.018  // per ohm m
//no of electrons
n=10^19  //electrons/m^3
//voltage
V=0.16  //V
//thickness of material
t=0.29*10^-3  //m
//mass and charge of electron
m=9.1*10^-31  //kg
e=1.602*10^-19  //C
//electric feilf gradient
kie=V/t  //V/m
//as we know that
//sigma=n*e*vd/kie
//so v
vd=sigma*kie/n/e  //m/s
printf ("drift velocity of carriers is %f m/s",vd)
