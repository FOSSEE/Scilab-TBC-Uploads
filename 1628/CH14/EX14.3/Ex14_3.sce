
                    // Example  14.3

f=50;                     // Frequency
p=20;                     // No.Of poles
Ns=(120*f)/p;             // Speed Of rotation
disp('(a) Speed of Rotation is = '+string(Ns)+' rpm');
p1=180/20;                // No.Of slots per pole
Q=180/p1;                 // Slot angle
q1=p1/3;                  // No.Of slots per pole for group q
sa=sind((q1*Q)/2);
sb=sind(Q/2);
kd=sa/(q1*sb);            // Generated emf per phase
disp('(b) Generated emf per phase = '+string(kd)+' Volt');

g=0.025;                  // Flux per poles
T=240;                    // No.Of turns per phase
kp=1;
E=(4.44*f*g*kp*T*0.96);   // Rms value of emf per phase
El=sqrt(3)*E;             // Line emf
disp('(b) Generated emf per phase = '+string(E)+' Volt');
disp('(c) Line emf = '+string(El)+' Volt');


       //   p 554      14.3
