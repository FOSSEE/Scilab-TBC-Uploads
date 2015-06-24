//Chapter-5,Example 5_15,Page 5-31
clc()

//Given Values:
m=1.676*10^-27          //mass of neutron
h=6.63*10^-34           //Planck's constant
lam=2*10^-12            //wavelength of neutron
c=3*10^8                //Velocity of light

//Calculations:
p=h/lam                 //momentum of neutron
KE=p^2/(2*m)            //Kinetic Energy of neutron in joules
printf('Kinetic Energy of electron is =%.21f Joules \n \n',KE)

//velocity of particle is same as group velocity. Thus,
vg=p/m                  //group velocity
printf(' group velocity of neutron is =%.0f m/s \n \n',vg)

//using, vg*vp=c^2
vp=c^2/vg               //phase velocity
printf(' phase velocity of neutron is =%.0f m/s \n \n',vp)
