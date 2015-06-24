

                    // Examle 16.19

V=220;                  // Supply voltage
Ia=22;                  // Armature currernt
Ra=0.45;                // Armature resistance
E1=V-(Ia*Ra);           // Generated emf
disp(' Generated emf = '+string(E1)+' Voltage');

N1=700;                 // Speed of motor in Shunt
N2=450;                 // Speed of motor in Series
E2=(N2*E1)/N1;          // Emf of Shunt motor
disp(' Emf of Shunt motor = '+string(E2)+' voltage');

Va=Ia*Ra;               // Armature voltage
R=(V-(E2+Va))/Ia;       // Resistance with Armature
disp(' Resistance with Armature = '+string(R)+' ohms');
 
 
 
                        // p 654     16.19