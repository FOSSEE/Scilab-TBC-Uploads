//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.5-1
//Principles of Momentum Transfer and Overall Balances
//given data
f=10*(1/7.481)*(1/60);//flow rate(ft3/s)=10(gal/min)*(1ft3/7.481 gal)(1min/60s)
D=2.067/12;//diameter in ft
A=(3.14*D*D)/4;//cross sectional area in ft2
v=f/A;//velocity in ft/s
rhoeng=0.996*62.43;//lbm/ft3
mueng=0.8007*6.7197/10000;//viscosity in lbm/ft*s
Nreeng= (D*v*rhoeng)/(mueng);//reynolds number in english units
//in SI units
rhosi=0.996*1000;//density in kg/m3
Dsi=2.067*1/3.2808;//in*(ft/12in)*(m/ft)
vsi=v*(1/3.2808)*(1/12);//velocity in m/s
musi=0.8007/1000;//viscosity in SI units
Nresi=(Dsi*rhosi*vsi)/musi;
mprintf("the reynolds number in si units is %f",Nresi)
mprintf("the reynolds number in english units is %f",Nreeng)
//end
