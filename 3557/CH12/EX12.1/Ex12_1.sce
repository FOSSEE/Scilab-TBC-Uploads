//Example12.1//

a=26.98;//amu //atomic mass of Aluminium
b=16.00;//amu //atomic mass of Oxygen
c=2;//Number of atoms
d=3;//Number of atoms
Al2O3=(c*a)+(d*b)
mprintf("Al2O3 = %f amu",Al2O3)
e=28.09;//amu //atomic mass of silicon
SiO2=e+(c*b)
mprintf("\nSiO2 = %f amu",SiO2)
f=(d*Al2O3)/((d*Al2O3)+(c*SiO2))
mprintf("\nf = %f",f)
