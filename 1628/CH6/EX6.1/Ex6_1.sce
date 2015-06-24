
                      // Example  6.1

N=200;             // No.Of turns
I=4;               // Current of a Coil
l=.06;             // circumference of Coil
H=(N*I)/l;         // Formula of Megnetic Field Strength
disp('(a) The Megnetic Field Strength = '+string(H)+' A/m');
mo=4*%pi*10^-7;    // Permeability of free Space
mr=1;              //Permeability of coil
B=mr*mo*H;         // Formula of Flux Density
disp('(b) The Flux Density is = '+string(B)+' Tesla');
A=500*10^-6;       // Area of Coil 
Q=B*A;             // Total Flux
disp('(c) The total Flux is = '+string(Q)+' Wb');



        //  p 211      6.1
