//Example15.13//
pSi=2.33;//g cm^-3 //Density of Silicon
a=28.09;//amu //atomic mass of silicon
b=10^6;//cm^3/m^3
c=1;//g.atom
e=0.6023*10^24;//atoms/g.atom //Avogadro's Number
p=(pSi*b*(c/a)*e)
mprintf("p = %e atoms/m^3",p)
ne=14*10^15;//m^-3 //carrier density //(From the table 15.5)
f=ne/p
mprintf("\nf = %e ",f)
