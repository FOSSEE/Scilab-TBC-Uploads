//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.2w
//calculation of the distance from the earth's surface where resultant gravitational field due to the earth and the moon is zero

//given data
Me=6*10^24//mass(in kg) of the earth
Mm=7.4*10^22//mass(in kg) of the moon
d=4*10^5*10^3//distance(in m) between the earth and the moon 

//calculation
//gravitational field due to the earth at that point
//E1 = G*Me/x^2.........................(1)
//gravitational field due to the moon at that point
//E2 = G*Mm/(d-x)^2.....................(2)
//E1 = E2.....given 
x=(d*sqrt(Me/Mm))/(1+sqrt(Me/Mm))

printf('the distance from the earth surface where resultant gravitational field due to the earth and the moon is zero is %3.1e km',x*10^-3)
