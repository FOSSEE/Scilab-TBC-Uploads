
clear
 clc
//to find kinetic energy lost by neutron

// GIVEN:

//initial kinetic energy of neutron
K1i = 5.0//in MeV
//mass of neuron mn
mn = 1//considering it as unity as other masses are given with reference to mn
//mass of neucleus of lead
mPb = 206*mn
//mass of neucleus of carbon
mC = 12*mn
//mass of neucleus of hydrogen
mH = mn

// SOLUTION:

//As collision is elastic collision
//using conservation of energy principle

//collision with neucleus of lead 
//final kinetic energy of neutron
K1f = K1i*((mn-mPb)/(mn+mPb))^2//in MeV
//kinetic energy lost by neutron
K_lostl = K1i-K1f//in MeV 


//collision with neucleus of carbon 
//final kinetic energy of neutron
K1f_C = K1i*((mn-mC)/(mn+mC))^2//in MeV
//kinetic energy lost by neutron
K_lostC = K1i-K1f_C//in MeV 


//collision with neucleus of lead 
//final kinetic energy of neutron
K1f_H = K1i*((mn-mH)/(mn+mH))^2//in MeV
//kinetic energy lost by neutron
K_lostH = K1i-K1f_H//in MeV 

printf ("\n\n Collision with neucleus of lead") 
printf ("\n\n Final kinetic energy of neutron K1f = \n\n %.1f MeV",K1f);
printf ("\n\n Kinetic energy lost by neutron K_lostl = \n\n %.1f MeV",K_lostl);
printf ("\n\n Collision with neucleus of carbon") 
printf ("\n\n Final kinetic energy of neutron K1f_C = \n\n %.1f MeV",K1f_C);
printf ("\n\n Kinetic energy lost by neutron K_lostC = \n\n %.1f MeV",K_lostC);
printf ("\n\n Collision with neucleus of hydrogen") 
printf ("\n\n Final kinetic energy of neutron K1f_H = \n\n %.1f MeV",K1f_H);
printf ("\n\n Kinetic energy lost by neutron K_lostH = \n\n %.1f MeV",K_lostH);
