
                     // Example  7.5

r=1*10^-2;          // Radius  of rod
A=%pi*r*r;          // area of rod
N=3000;             // No.of turns
I=0.5;              // Current in the rod
l=0.2;              // Diameter of rod
B=1.2;              // Megnetic Flux Density
H=(N*I)/l;          // Megnetic Field Strength
m=B/H;              // Permeability of rod
disp(' (a) Permeability of iron = '+string(m)+' Tm/A');
mo=4*%pi*10^-7;     // Permeability of free Space
mr=m/mo;            // relative Permeability
disp(' (b) Relative Permeability of iron = '+string(round(mr)));
Q=B*A;              // Flux
dQ=Q*0.9;           // Chenge in Flux
L=(N*Q)/I;          // Formula of Induction of a Coil 
disp(' (c) Induction of a Coil = '+string(L)+' H');
di=0.01;
e=N*(dQ/di)        // Formula of emf (using Self induction)
disp(' (d) Voltage in a Coil = '+string(e)+' Volt');



      //   p 229     7.5

