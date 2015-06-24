//example-6.1
//page no-169
//given
//molecular weight of CaF2 (calcium fluoride)
Mw=0.079  //kg/mol
//specific gravity of CaF2
sg=3.17
//density
rho=sg*1000  //kg/m^3
//avogadro's number
NA=6.023*10^23
//the no of lattice sites is
NL=NA*rho/Mw   //calcium ions/m^3
//the ionic structure of CaF2
NI=2*NL  // per m^3
//we can note that the no of anions are double that of the no of cation vacancies for frenkel defect, so effective value of Ef =Ef/2 i.e half
//effective energy
Ef=2.7*1.602*10^-19   //V (because 1eV=1.602*10^-19 V)
//boltzmann's constant
k=1.38*10^-23
T=1300 //K
//no of frenkel defects nF per cubic metre ie
nF=sqrt(NI*NI)*exp(-Ef/2/k/T)  // per m^3 (some variation in result is due to the approximation done in book at some points)
printf ("the number of frenkels defect per unit volume of CaF2 is  %e per m^3 approx.",nF)
