
N=120//no. of turns in coil
dphi=(.3-.8)*1D-3//change in flux due to motion of conductor
dt=.08//time taken for change in flux
e=-N*dphi/dt
mprintf("Induced emf in the coil=%f V\n",e)
R=200//resistance offered by the coil
I=e/R
mprintf("Induced current=%f mA",I*1000)
