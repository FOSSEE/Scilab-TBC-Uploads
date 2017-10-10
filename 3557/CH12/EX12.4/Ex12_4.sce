//Example12.4//
Al=26.98;//amu //atomic mass of Aluminium
O=16.00;//amu //atomic mass of Oxygen
Si=28.09;//amu //atomic mass of Silicon
H=1.008;//amu //atomic mass of Hydrogen
i=2;//Number of atoms
j=3;//Number of atoms
m1=(i*Al+j*O)+i*(Si+i*O)+i*(i*H+O)
mprintf("m1 = %f amu",m1)
m2=i*(i*H+O)//amu
mprintf("\nm2 = %f amu",m2)
//As a result the mass of H2O driven off will be
k=5;//kg //Kilograms
mH2O=(m2/m1)*k
mprintf("\nmH2O = %f kg",mH2O)
j=10^3;//g //As 1Kg = 10^3grams
m3=mH2O*j
mprintf("  = %i g ",m3)
