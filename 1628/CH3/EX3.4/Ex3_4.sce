
                             // Examle 3.4

C1=0.05;                               // Capacitor 1 ( in Micro )
C2=0.1;                                // Capacitor 2 ( in Micro )
C3=0.2;                                // Capacitor 3 ( in Micro )
C4=0.05;                               // Capacitor 4 ( in Micro )
C=(1/C1)+(1/C2)+(1/C3)+(1/C4);         // Addition of  capacitors
Cs=1/C;                                // Equivalent capacitor
disp(' Equivalent capacitor = '+string(Cs)+' uF');

V=220;                                 // Supply voltage
Q=Cs*V;                                // Charge transfer
V1=Q/C1;                               // Voltage drop across capacitor 1
disp(' Voltage drop across capacitor 1 = '+string(V1)+' Volt');

V2=Q/C2;                               // Voltage drop across capacitor 2
disp(' Voltage drop across capacitor 2 = '+string(V2)+' Volt');

V3=Q/C3;                               // Voltage drop across capacitor 3
disp(' Voltage drop across capacitor 3 = '+string(V3)+' Volt');

V4=Q/C4;                               // Voltage drop across capacitor 4
disp(' Voltage drop across capacitor 4 = '+string(V4)+' Volt');




                //   p 55        3.4   
