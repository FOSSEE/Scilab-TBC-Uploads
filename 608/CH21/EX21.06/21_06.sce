//Problem 21.06: A d.c. generator running at 30 rev/s generates an e.m.f. of 200 V. Determine the percentage increase in the flux per pole required to generate 250 V at 20 rev/s.

//initializing the variables:
n1 = 30; // in rev/sec
E1 = 200; // in Volts
n2 = 20; // in rev/sec
E2 = 250; // in Volts

//calculation:
//generated e.m.f., E proportional to phi*w and since w = 2*pi*n, then
// E proportional to phi*n
// E1/E2 = Phi1*n1/(Phi2*n2)
// let Phi2/Phi1 = Phi
Phi = E2*n1/(E1*n2)
Phi_inc = (Phi - 1)*100 ///in percent

printf("\n\n Result \n\n")
printf("\n percentage increase in the flux per pole is %.1f percent ",Phi_inc)