

                    // Example  14.7

Zph=24*(12/3);              // The No.Of conductors in series 
T=Zph/2;                    // No.Of turns per phase
p1=24/4;                    // No.Of slots/pole 
Q=180/p1;                   // Slot angle
q1=p1/3;                    // No.Of slots/pole for group q
sa=sind((q1*Q)/2);          // Distribution factor (Numerator part )
sb=sind(Q/2);               // Distribution factor (denominator part )
kd=sa/(q1*sb);              // Distribution factor
p=4;                        // No.Of poles 
Ns=1500;                    // Speed 
g=0.1;                      // Flux per pole
f=(p*Ns)/120;               // Pitch factor
kp=1;                       // Constant
E=(4.44*f*g*kp*T*kd);       // Generated emf per phase
El=sqrt(3)*E;               // line emf (at alternator 1500 rpm)
disp(' line emf (at alternator 1500 rpm) = '+string(round(El))+' Volt');





            // p 572    14.7
