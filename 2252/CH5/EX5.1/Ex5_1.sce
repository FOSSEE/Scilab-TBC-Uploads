
N=1000//no. of turns in the coil
dphi=-2*900D-6//change in flux in Wb
dt=.2//time in sec in which change takes place
emf=-N*dphi/dt
mprintf("Average emf induced in the coil=%d V",round(emf))
