//Chapter-5,Example 5_14_3,Page 5-37
clc()

//Given Values:
m=1.676*10^-27        //mass of neutron
h=6.634*10^-34        //Planck's constant

//Calculations:
E1=0.025             //Energy in eV of neutron
E=E1*(1.6*10^-19)    //Energy in joules
//As E=m*v^2/2
v=sqrt(2*E/m)        //Velocity of neutron beam

lam=h/(m*v)          //wavelength of a beam of neutron
printf('wavelength of a beam of neutron is =%.13f m \n',lam)
