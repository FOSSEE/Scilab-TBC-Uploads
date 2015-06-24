
                // Examle 18.1

I=0.015;                 // Current in a coil
B=0.2;                   // Megnetic flux density
l=0.02;                  // Length of megnetic field
n1=42;                   // No.Of turns N1
r=0.0125;                // radius of coil
n2=43;                   // No.Of turns N2
F1=I*B*l*n1;             // The force on(42-Conductors)
disp('The force on(42-Conductors) = '+string(F1)+' N');

F2=I*B*l*n2;             // The force on(43-Conductors)
disp('The force on(43-Conductors) = '+string(F2)+' N');

Tr=(F1+F2)*r;            // Total Torque (Td)
disp ('Total Torque (Td) = '+string(Tr)+' Nm');




             //  p 756          18.1