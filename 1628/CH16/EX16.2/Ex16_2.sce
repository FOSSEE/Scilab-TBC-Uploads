
                    // Example  16.2

s=65;                   // No.Of slots
nc=12;                  // Couductor per slot
z=s*nc;                 // Impedance
p=4;                    // No.Of poles
Q=0.02;                 // Megnetic flux
N=1200;                 // Speed of motor
E=(Q*z*N*p)/(60*p);     // Total emf Induced
disp('Total emf Induced = '+string(E)+' Volt');



       //  p 633    16.2
