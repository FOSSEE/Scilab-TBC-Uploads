//Chapter-5,Example 5_13,Page 5-30
clc()

//Given Values:
me=9.1*10^-31           //mass of electron
h=6.63*10^-34           //Planck's constant
lam=2*10^-10            //wavelength of electron and photon

//Calculations:
p1=h/lam                //momentum of electron
printf('Momentum of electron is =%.27f kg.m/s \n \n',p1)

Ee=p1^2/(2*me)          //Energy of electron in joules
printf(' Energy of electron is =%.21f Joules \n \n',Ee)

p2=h/lam                //momentum of photon
printf(' Momentum of photon is =%.27f kg.m/s \n \n',p2)

c=3*10^8                //Velocity of light
Ep=h*c/lam              //Energy of photon in joules
printf(' Energy of photon is =%.19f Joules \n \n',Ep)


