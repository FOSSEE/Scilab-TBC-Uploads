
//calculating no. of turns in secondary winding
Es=500//no load voltage of low voltage winding
phi=.06//flux
f=50//frequency in Hz
Ns=round(Es/(4.44*f*phi))
mprintf("No. of turns in low voltage winding=%f\n",Ns)
//calculating no. of turns in primary winding
Np=Ns*6600/500
mprintf("Np=%f(not possible)\n",Np)
//Here, the no. of turns finally taken is 500 and not 502
mprintf("No. of turns finally taken is 500 ,because the high voltage winding will be split up into a no. of coils")
