//Example 13.6//
C=12.01;//amu //atomic mass of carbon //(From Appendix 1)
H=1.008;//amu //atomic mass of hydrogen //(From Appendix 1)
O=16.00;//amu //atomic mass of oxygen //(From Appendix 1)
a=6;//Number of atoms
b=2;//Number of atom
mw=((a*C)+(a*H)+O)+1.5*(C+(b*H)+O)-1.5*((b*H)+O)
mprintf("mw = %f g  (Answer is not mentioned in the texbook)",mw)
//the mass of the polymer i question is
p=1.4;//g/cm^3
V=10;//cm^3
m=p*V
mprintf("\nm = %i g",m)
//Therefore the numbers of mers in the cylinder is
c=0.6023*10^24;//mers //Avogardo's Number
n1=m/(mw/c)
mprintf("\nn1 = %e mers",n1)
//which gives the molecular weight
wt=n1*mw
mprintf("\nwt = %e amu",wt)
