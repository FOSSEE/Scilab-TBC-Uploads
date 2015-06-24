

                    // Example  14.6

po=9000;                          // O/p power
n=0.9;                            // Efficiency of motor
pi=po/n;                          // I/p power
X=3;                              // Reactance
Vl=400;                           // Phase voltage
R=0.4;                            // Resistance
Cos1=0.8;                         // Leading power factor
I=pi/(sqrt(3)*Vl*Cos1);           // I/p current per phase
q1=acosd(0.8);                    // Leading angle
Zs=sqrt(R*R+X*X);                 // Impedance
Q=atand(X/R);                     // Phase angle
V=400/sqrt(3);                    // Supply voltage per phase
Er=I*Zs;                          // Voltage drop per phase across the synchronous impedance

E=(sqrt(V*V+Er*Er+2*V*Er*cosd(180-Q-q1)));
El=sqrt(3)*E;                     // Exitation emf
disp(' Exitation emf = '+string(El)+' volt');

Qr=asind((Er*sind(Q+q1))/E);      // Angle of rotor
disp(' Angle of rotor = '+string(Qr)+' Digree');



            //    p 568    14.6
