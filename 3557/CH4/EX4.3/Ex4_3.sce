//Example4.3 //
a=2.70*10^6;//g/m^3 //density of aluminium
b=26.98;//g // atomic mass 
c=0.602*10^24;//atoms //atomic mass unit
at=a/(b/c)
mprintf("at = %e atoms m^-3",at)
//Then density of vacant sites will be
d=2.29*10^-5;//atom^-1 //fraction of aluminium sites vacant at 400 degree celsius
v=d*at
mprintf("\nv= %e m^-3",v)
