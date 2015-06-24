
clear
 clc
//to find energy and direction of outgoing particl 3H

// GIVEN:
//refer to figure 13-11 from page no. 290
//difference in internal energy of initial and final partical
delta_Eint = 4.03//in MeV
//initial kinetic energy of deuteron
Ki = 1.50//in MeV
//initial kinetic energy of proton
K1 = 3.39//in MeV
//mass of hydrogen
m1 = 1.01//u
//mass of deuteron
m2 = 2.01//u
//mass of proton
m3 = 3.02//u

// SOLUTION:
//applyinq consevation of energy principle
//final kinetic energy
Kf = delta_Eint+Ki//in MeV
//final kinetic energy of outgoing partical 3H
K3 = Kf-K1//in MeV
//applying conservation of momentum principle
//value of cosfi
f = sqrt((m2*Ki)/(m3*K3))
//direction of outgoing particl 3H
fi = acosd(sqrt((m2*Ki)/(m3*K3)))//in degrees

printf ("\n\n Final kinetic energy Kf = \n\n %.2f MeV",Kf)
printf ("\n\n Final kinetic energy of outgoing partical 3H K3 = \n\n %.2f MeV",K3)
printf ("\n\n Value of cosfi = \n\n %.3f ",f)
printf ("\n\n Direction of outgoing particl 3H fi = \n\n %.1f degree",fi)
