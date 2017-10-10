//Calculate the Equilibrium Constant for the  reaction and the emf of the cell

//Example 10.4

clc;

clear;

E1=1.72; //Standard Reduction Pontential for cathode in V

E2=0.771; //Standard Reduction Pontential for anode in V

Edes=E1-E2; //Standard Electrode  Pontential for Electrochemical cell in V

F=96500;  //Faraday's constant in C mol^-1

v=1; //Stoichiometric coefficient

R=8.314;  //Gas constant in J K mol^-1

T=298;  //Temperature in K

K=exp((Edes*F*v)/(R*T));  //Equilibrium constant 

printf("(a)Equilibrium constant = %.1f*10^16",K*10^-16);

C1=50.0*0.10/1000; //Number of moles of Fe  ion initially present in mol

C2=10.0*0.10/1000; //Number of moles of Ce  ion  initially present in mol

V=0.060; //Total volume of the solution in L

x=2.3*10^-20; //Number of moles Ce at equilibrium in mol 

C3=(C2-x)/V; //Number of moles of Ce plus 3 ion at equilibrium in mol

C4=(C2-x)/V; //Number of moles of Ferric  ion at equilibrium in mol

C5=(C1-(C2-x))/V; //Number of moles of Ferrous  2 ion at equilibrium in mol

C6=x/V; //Number of moles of Ce plus 4  ion at equilibrium in mol

K1=(C3*C4)/(C6*C5); //Equilibrium constant

Edes1=0.771; //Standard Electrode  Pontential for Electrochemical cell in V

E=Edes1+0.0257*log(C4/C5); //emf of the  cell in V

printf("\n(b)emf of the cell = %.2f V",E);
