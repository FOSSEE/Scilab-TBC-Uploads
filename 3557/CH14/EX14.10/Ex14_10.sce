//Example 14.10//
a=175;//Mpa //the tensile strength of pure aluminium
b=1.02*10^-1;//kg/mm^2/Mpa
c=2.70;//Mg/m^3 //density of aluminium
d=10^3;//kg/Mg //given
e=1;//m^3 //cubic meter
f=10^9;//mm^3 //given
sp=(a*b)/(c*d*(e/f))
mprintf("sp = %e mm",sp)
a1=350;//mm //the tensile strength of the dispersion strengthened aluminium
b1=1.02*10^-1;//mm//given
c1=2.83;//Mg/m^3// density of aluminium
g=10^-6;//given
s=(a1*b1)/(c1*g)
mprintf("\ns = %e mm",s)
