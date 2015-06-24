//Problem 40.12: Determine the energy stored in a 10 nF capacitor when charged to 1 kV, and the average power developed if this energy is dissipated in 10 μs.

//initializing the variables:
e0 = 8.85E-12; 
er = 1;
C = 10E-9; // in Farad
V = 1000; // in Volts
t = 10E-6; // in sec

//calculation:
//energy stored,Wf
Wf = C*V*V/2
//average power developed
Pav = Wf/t

printf("\n\n Result \n\n")
printf("\n the energy stored is %.2E J",Wf)
printf("\nthe average power developed is %.0f W",Pav)