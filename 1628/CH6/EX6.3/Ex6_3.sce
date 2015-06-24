


                      // Example  6.3

Q=800*10^-6;      // Flux 
A=500*10^-6;      // Area of Coil 
mo=4*%pi*10^-7;   // Permeability of free Space
mr=380;           // Permeability of of Coil
l=0.4;            // circumference of Coil
R=l/(mr*mo*A);    // Formula of Reluctance
disp(' Reluctance of Ring is = '+string(R)+' A/Wb');
F=Q*R;            // Formula of Magnetomotive Force (mmf)
N=200;            // No.Of turns
I=F/N;            // Formula of Magnetising Current 
disp(' Magnetising Current is = '+string(I)+' At');



               // p 212      6.3 
