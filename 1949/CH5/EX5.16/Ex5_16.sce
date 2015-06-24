//Chapter-5,Example 5_16,Page 5-32
clc()

//Given Values:
m=1.157*10^-30         //mass of particle in kg
h=6.63*10^-34          //Planck's constant
c=3*10^8               //Velocity of light

//Calculations:
E1=80                  //Energy in eV of particle
E=E1*(1.6*10^-19)      //Energy in joules
 
lam=h/sqrt(2*m*E)      //wavelength of particle
printf('Wavelength of particle is =%.13f m \n \n',lam)

//Now,
vg=h/(lam*m)           //group velocity
printf(' Group velocity of particle is =%.0f m/s \n \n',vg)

//using, vg*vp=c^2
vp=c^2/vg              //phase velocity
printf(' Phase velocity of particle is =%.0f m/s \n \n',vp)
