
                // Examle 17.3

Xm=20;                    // Inductive reactance of Main-winding
Rm=2;                     // Main-winding resistance
Ra=25;                    // Auxilliary-winding resistance
f=50;                     // Frequency
Xa=5;                     // Inductive reactance of Auxilliary-winding
Qm=atand(Xm/Rm);          // Angle of Main-winding
Qa=Qm-90;                 // Angle of Auxilliary-winding
Xc=Xa-(tand(Qa)*Ra);      // Capacitive reactance
C=1/(2*%pi*f*7.495);      //Capacitor (C)   ==> { Xc= 7.5 ,but taking Xc= 7.495 }
disp('The value of Capacitor (C) = '+string(C)+' F');




            // p 684    17.3