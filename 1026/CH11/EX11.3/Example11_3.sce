//chapter11,Example11_3,pg 299

KEnu=0.025*1.6*10^-19//kinetic energy of neutron

mn=1.676*10^-27//mass of neutron

v=sqrt((2*KEnu)/mn)

h=6.626*10^-34

lamn=h/(mn*v)//debroglie wavelength of neutron 

printf("wavelength of beam of neutron\n")

printf("lamn=%.12f m",lamn)

p=(h/lamn)

printf("\nmomentum of electron and photon\n")

printf("p=%.26f kgm/sec",p)

me=9.1*10^-31//mass of electron

ve=(p/me)//velocity of electron

Ee=0.5*p*ve//energy of electron

Ee=Ee/(1.6*10^-19)//convering into ev

printf("\nenergy of electron\n")

printf("Ee=%.2f ev",Ee)

Ep=(h*3*10^8)/lamn//energy of photon

Ep=Ep/(1.6*10^-19)

printf("\nenergy of photon\n")

printf("Ep=%.2f ev",Ep)