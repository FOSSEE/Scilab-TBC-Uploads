

                             // Examle 3.1

A=0.113;                   // Area of parallel plate 
eo=8.854*10^-12;           // Permittivity of free space 
er=10;                     // Relative Permittivity 
d=0.1*10^-3;               // Distance between 2 Plate
C=(eo*er*A)/d;             // The value of capacitor Using case-1
disp(' The value of capacitor Using case-1 = '+string(C*1000000)+' uF');

w=0.05;                    // Energy stored
v=100;                     // Voltage
C1=(2*w)/v^2;              // The value of capacitor Using case-2
disp(' The value of capacitor Using case-2 = '+string(C1*1000000)+' uF');

i=5*10^-3;                 // Current
dv=100;                    // Increase iv voltage
dt=0.1;                    // Time required 
C2=i/(dv/dt);              // The value of capacitor Using case-3
disp(' The value of capacitor Using case-3 = '+string(C2*1000000)+' uF');






              //  p 53     3.1
             
             
             
             