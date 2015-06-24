//example-26.3
//page no-783
//given
//energy of photon
E=1.5*10^-19  //J
//quantum eficiency
muquantam=0.6
//photon current
Iopc=3*10^-6  //A
//speed of light
c=3*10^8  //m/s
//plank's constant
h=6.626*10^-34  //J s
//wavelength at which the photodiode is operatng
lambda=h*c/E*10^6  //micro m
//responsivity of diode
R=0.64
//incident optical power is given by
Piop=Iopc/R*10^6  //micro W
printf ("wavelength at which photodiode is operating is %f micro m \n and incident optical power is %f micro W",lambda,Piop)
