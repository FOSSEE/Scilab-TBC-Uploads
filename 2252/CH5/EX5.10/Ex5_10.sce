
mu_not=4D-7*%pi
N=800//no. of turns for each solenoid
l=90D-2//length of each solenoid
Ax=%pi*(3D-2)^2/4//cross-sectional area of solenoid X
Ay=%pi*(6D-2)^2/4//cross-sectional area of solenoid Y
M=N*N*mu_not*Ax/l
mprintf("Mutual inductance of arrangement=%f mH\n",1000*M)
//calculating coupling co-efficient
Lx=N*mu_not*N*Ax/l
Ly=N*mu_not*N*Ay/l
k=M/sqrt(Lx*Ly)
mprintf("Coupling co-efficient=%f",k)
