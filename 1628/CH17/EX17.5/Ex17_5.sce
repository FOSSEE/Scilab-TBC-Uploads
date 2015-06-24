
                // Examle 17.5

b=15;                           // Step Angle
m=3;                            // No.Oh phase 
Nr=360/(m*b);                   // Number of rotors
disp('No.Of Rotors = '+string(abs(Nr)));

Ns1=(Nr*360)/((b*Nr)-360);      // No.Of Stator When (Ns > Nr)
disp('No.Of Stator When (Ns > Nr) = '+string(abs(Ns1)));

Ns2=(Nr*360)/((b*Nr)+360);      // No.Of Stator When (Ns < Nr)
disp('No.Of Stator When (Ns < Nr) = '+string(Ns2));



             // p 690     17.5