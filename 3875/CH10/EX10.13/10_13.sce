clc;
clear;
h=6.63*10^-34 //Plancks constant in J-s
v=3*10^8 // frequency of light in Hz
e=1.6*10^-19 //charge in C
lambda=200*10^-9 //wavelength in m
W=4.2 //work function in Joule
c=3*10^8 //velocity of light in m/s

//calculation 
E=(h*c)/(lambda)//energy in J
E_v=E/e //energy in eV

//case (1)
//(a)
E_k=E_v-W
mprintf("The kinetic energy of the fastest electrons is = %d eV\n",E_k)

//(b)
mprintf("The kinetic energy of slowest electrons is zero. As the emitted electrons have all possible energies from 0 to certain maximun value is E_k = %d eV \n",E_k)

//case(2)
mprintf("If V_s is the stopping potential then E_k=e*V_s.Since the electrons have a maximum kinetic energy of %d eV,the stopping potential is also E_k = %d eV \n",E_k,E_k)

//case(3)
lambda_0=(h*c)/(W*e)
mprintf("The cut off wavelength for aluminium is %1.1e m",lambda_0)
