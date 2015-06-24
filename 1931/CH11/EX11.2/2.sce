clc
clear
//INPUT DATA
ni=1.5*10^16//intrinsic charge carriers in m^-3
me=1300*10^-4//electron mobility in m^2 V^-1 s^-1
mh=500*10^-4//hole mobility in m^2 V^-1 s^-1
c=3*10^4//conductivity of n-tpye silicon in ohm^-1 m^-1
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
ne=(c/(e*me))/10^24//DensiTy of electrons in n-type silicon in electrons/m^3 *10^24
nh=(ni^2/(ne*10^24))/10^8//Density of holes in n-type silicon in holes/m^3 *10^8
Ne=(c/(e*mh))/10^24//Density of holes in p-type silicon in holes/m^3 *10^24
Nh=(ni^2/(Ne*10^24))/10^7//Density of electrons in p-type silicon in holes/m^3 *10^7

//OUTPUT
printf('DensiTy of electrons in n-type silicon is %3.4f *10^24 electrons/m^3 \n DensiTy of holes in n-type silicon is %3.2f*10^8 holes/m^3 \n DensiTy of holes in p-type silicon is %3.2f*10^24 holes/m^3 \n DensiTy of electrons in p-type silicon is %i*10^7 electrons/m^3',ne,nh,Ne,Nh)
