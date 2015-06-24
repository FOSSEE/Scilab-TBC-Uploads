//Variable declaration
ni=1.5*10**16    //intrinsic concentration(electron-hole pairs/m^3)
n=4.99*10**28    //number of Si atoms(atoms/m^3)
un=0.13          //electron mobility(m^2/V.s)
up=0.05          //hole mobility(m^2/V.s)
e=1.6*10**-19    //electronic charge(c)

//Calculation
//Part a
g=e*ni*(un+up)  //intrinsic conductivity(S/m)
r=1/g           //interinsic resistivity(ohm.m)
Nd=n/10**8      //doped silicon(atoms/m^3)=nn,majority carriers
pn=ni**2/Nd     //minority carrier density(holes/m^3)

//Part b
k=e*un*Nd    //conductivity(S/m)
             //using Nd in place of nn as Nd=nn
rho=1/k      //resistivity(ohm.m)

//Results
printf ("the minority carrier density of Si is %.2e holes/m^3 ",pn)
printf ("the resistivity of Si is %.2e ohm.m",rho)
