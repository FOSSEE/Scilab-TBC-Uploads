//example-19.5
//page no-566
//given
//current density
Id=1000  //A/m^2
//resistivity
rho=0.05  //ohm m
//conductivity
sigma=1/rho  //per ohm m
//electron mobility
mue=0.4  //m^2/V m
//length of crystal
l=100*10^-6  //m
//charge on electron
e=1.602*10^-19  //C
//in n-type semiconductor ne>>>nh
//so
n=sigma/e/mue  //per m^3
//also we know that
//Ie=n*e*vd
//so
vd=Id/n/e  //m/s
//the distance l travelled in time t at drift velocity vd, by an electron is given by
//l=t*vd
//so
t=l/vd*10^6  //micro sec
printf ("the velocity and time taken by the electron to travel 100 m in the crystal is %d m/s and %d micro sec",vd,t)
