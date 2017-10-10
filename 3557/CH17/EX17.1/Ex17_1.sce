//Example 17.1//

psi=2.33;//g cm^-3 //Density of Silicon
a=28.09;//amu //atomic mass of silicon
b=10^6;//cm^3/m^3 //given
c=1;//g.atom //given
d=0.6023*10^24;//atoms/g.atom //Avogadro's Number
p=psi*b*(c/a)*d
mprintf("p = %e atoms/m^3",p)
e=28;//conduction electron
f=10^14;//atoms //given
n=(e/f)*p
mprintf("\nn = %e m^-3",n)
