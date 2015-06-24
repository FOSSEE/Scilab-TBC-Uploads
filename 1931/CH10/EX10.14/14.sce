clc
clear
//INPUT DATA
ec1=19.96//The electrical conductivity of an intrinsic semi conductor in ohm^-1 m^-1
ec2=79.44//The increasing electrical conductivity of an intrinsic semi conductor in ohm^-1 m^-1
t1=333//temperature of an intrinsic semi conductor in k
t2=373//increasing temperature of an intrinsic semi conductor in k
kb=1.38*10^-23//Boltzmann's constant in m^2 Kg s^-2 k^-1

//CALCULATION
Eg=(2*kb*(log(ec2/ec1))*((t1*t2)/(t2-t1)))/10^-19//The band gap of an intrinsic semi conductor in J*10^-19

//OUTPUT
printf('The band gap of an intrinsic semi conductor is %3.6f*10^-19 J',Eg)
