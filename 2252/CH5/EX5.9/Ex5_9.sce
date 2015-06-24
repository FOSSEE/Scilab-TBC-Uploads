
mu_not=4D-7*%pi
Ns=400//no. of turns on search coil
N=1000//no. of turns of wire on solenoid
M=mu_not*Ns*N*25D-4/80D-2
mprintf("Mutual inductance of arrangement=%f mH\n",M*1000)
//di/dt=200
e=-M*200
mprintf("emf induced in search coil=%f V",e)
