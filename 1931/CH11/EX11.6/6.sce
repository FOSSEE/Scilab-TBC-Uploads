clc
clear
//INPUT DATA
c=112//conductivity of a n-type silicon specimen in ohm^-1 m^-1
RH=1.25*10^-3//Hall coefficient of a n-type silicon specimen in m^3 C^-1
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
me=(c*RH)//electron mobility in m^2 V^-1 s^-1
ne=(c/(me*e))/10^21//The charge carrier density in electrons/m^3*10^21

//OUTPUT
printf('The electron mobility is %3.2f m^2 V^-1 s^-1 \n The charge carrier density is%3.0f*10^21 electrons/m^3',me,ne)
