

                     // Example  9.6

R=10;             // Resistance
i=4+%i*3;         // Current
I=sqrt(4^2+3^2);  // Absolute Value of Current
Ir=4;             // Real Component of Current
Ii=3;             // Imaginary Component of Current
Q=atand(3/4);     // Phase Angle 
Pr=Ir^2*R;        // Power Due to Real Component
disp('Power Due to Real Component is = '+string(Pr)+' Watt');
 
Pi=Ii^2*R;        // Power Due to Imaginary Component
disp('Power Due to Imaginary Component is = '+string(Pi)+' Watt');

P=I^2*R;          // total PowerConsumed
disp('total Power Consumed is = '+string(P)+' Watt');



           // p 316       9.6
