
clear
 clc
//to find speed of John after contact is broken
//to find change in stored internal energy of skater


// GIVEN:
//refer to figure 13-9(a),(b) on page no. 288
//mass of John skater
M = 50//in Kg
//mass of Jim skater
M1 = 72//in Kg
//force exerted by Jim
Fext = 55//in N
//distance through which force is applied
s = 32e-2//in m
//distabce moved by center of mass
scm = 58e-2//in m

// SOLUTION:
//consider John as our system
//applyinq consevation of energy principle
//applying center of mass equation
//change in kinetic energy
delta_Kcm = Fext*scm//in J
//speed of John after contact is broken
vcm = sqrt(2*delta_Kcm/M)//in m/s
//change in John's internal energy
delta_E_int_John = Fext*s-Fext*scm//in J
//change in Jim's internal energy
delta_E_int_Jim = -(Fext*s)//in J

printf ("\n\n Change in kinetic energy delta_Kcm  = \n\n %.1f J",delta_Kcm)
printf ("\n\n Speed of John after contact is broken vcm = \n\n %.2f m/s",vcm)
printf ("\n\n Change in Johns internal energy delta_E_int_John = \n\n %.1f J",delta_E_int_John)
printf ("\n\n Change in Jim internal energy delta_E_int_Jim = \n\n %.1f J",delta_E_int_Jim)
