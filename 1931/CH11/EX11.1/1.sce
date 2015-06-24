clc
clear
//INPUT DATA
ni=2.1*10^19//intrinsic charge carriers in m^-3
me=0.4//electron mobility in m^2 V^-1 s^-1
mh=0.2//hole mobility in m^2 V^-1 s^-1
d=4.5*10^23//density of boron in m^-3
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
C=(ni*e)*(me+mh)//conductivity before adding boron atoms in ohm^-1 m^-1
c=(d*e*mh)/10^4//conductivity after adding boron atoms in ohm^-1 m^-1 *10^4

//OUTPUT
printf('Before adding boron atoms,the semiconductor is an intrinsic semiconductor \n conductivity before adding boron atoms is %3.3f ohm^-1 m^-1 \n Aefore adding boron atoms,the semiconductor becomes a P-type semiconductor \n conductivity after adding boron atoms is %3.2f*10^4 ohm^-1 m^-1',C,c)
