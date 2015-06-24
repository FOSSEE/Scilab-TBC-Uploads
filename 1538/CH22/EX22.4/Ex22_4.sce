//example-22.4
//page no-667
//given
//specific density of lead
sd=11.4
//density of lead
rho=sd*10^3  //kg/m^3
//atomic weight of lead
Aw=207.2  //kg/kg-mol
//velocity of sound in lead
v=1200  //m/s
NA=6.023*10^26  //particles/kg-mol (avogadro's number)
e=1.602*10^-19  //C/electrons  (charge on an electron)
m=9.1*10^-31  //kg  (mass of electron)
mu0=4*(%pi)*10^-7  //H/m  (permeability)
//since lead is type I superconductor, so  London's theory of superconductivity is applicable
//so
ne=2*rho*NA/Aw  //electrons/m^3
//critical current density
Ied=ne*e*v  //A/m^2
//depth of penetration at the surface of lead
dp=sqrt(m/(mu0*ne*e^2))*10^10  //A
printf ("the electron density is %e electrons/m^3\n, the critical current density is %e A/m^2\n and the depth of penetration is %e A",ne,Ied,dp)
