
//calculating Bm
Ep=400//induced emf in primary winding
Np=350//no. of turns in primary
Ai=55D-4//cross-sectional area
f=50//frequency in Hz
Bm=Ep/(4.44*f*Ai*Np)
mprintf("Maximum value of flux density in the core=%f Tesla(Wb/m^2)\n",Bm)
//calculating voltage induced in secondary winding
Ns=1050
Es=Ep*Ns/Np
mprintf("Voltage induced in the secondary winding=%d V",round(Es))
