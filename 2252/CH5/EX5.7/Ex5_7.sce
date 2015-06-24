
mu_not=4D-7*%pi
N=1200//no. of turns in the coil on solenoid
l=80D-2//length of solenoid
A=%pi/4*(5D-2)^2//cross-sectional area
L=N*(mu_not*N*A/l)
mprintf("Self inductance=%f mH\n",L*1000)
//calculating induced emf
di=-5-5
dt=.03
e=-L*di/dt
mprintf("Induced emf=%f V",e)
