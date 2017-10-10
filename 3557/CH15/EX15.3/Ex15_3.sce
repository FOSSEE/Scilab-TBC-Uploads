//Example 15.3//

pcu=8.93;// g cm^-3 //Density of Copper
a=63.55;//amu //atomic mass of copper
c=10^6;//cm^3/m^3 //given
d=1;//g.atom //given
h=0.6023*10^24;//atoms/g.atom //Avogardo's Number
p=pcu*c*(d/a)*(h)
mprintf("p = %e atoms/m^3",p)
a1=104*10^27;//m^-3 //density of free electrons in copper at room temperature
e=a1/p
mprintf("\ne = %f",e)
