
                             // Examle 3.6

C1=2*10^-6;                             // Capacitor 1
C2=8*10^-6;                             // Capacitor 2
C=(C1*C2)/(C1+C2);                      // Equivalentss capacitor
V=300;                                  // Supply voltage
Q=C*V;                                  // Charge on each capacitor
disp('(a)  Charge on each capacitor = '+string(Q*1000000)+' uC');

V1=Q/C1;                                // Voltage drop across capacitor 1
disp('(b).1  Voltage drop across capacitor 1 = '+string(V1)+' Volt');

V2=Q/C2;                               // Voltage drop across capacitor 2
disp('(b).2  Voltage drop across capacitor 2 = '+string(V2)+' Volt');

V1=240;
w1=0.5*C1*V1^2;                        // Energy stored in capacitor-1
disp('(c).1  Energy stored in capacitor-1 = '+string(w1*1000)+' mJ');

V2=60;
w2=0.5*C2*V2^2;                        // Energy stored in capacitor-2
disp('(c).2  Energy stored in capacitor-2 = '+string(w2*1000)+' mJ');






                      //   p 56          3.6