
                // Examle 16.9


Vo=210;           // Supply voltage
Il=195;           // Full-load current
Po=Vo*Il;         // O/p power
n=0.9;            // Efficiency
Pin=Po/n;         // I/p power
Tl=Pin-Po;        // Total loss
Rsh=52.5;         // Shunt field resistance
Ish=Vo/Rsh;       // Shunt field current
Ia=Il+Ish;        // Armeture Current (Ia)
Cl=Ish^2*Rsh;     // Shunt field copper loss
Hl=710;           // Stray losses
CL=Cl+Hl          // Constant loss
Al=4550-CL;       // Armature copper loss
Ra=Al/Ia^2;       // Armature resistance
disp('Armature resistance = '+string(Ra)+' Ohms');

          // ==> for maximum effciency  (Ia^2*RA= Pc = 1550 )
            
Ia1=sqrt(CL/0.0757);  // Armeture Current for maximum efficiency ==>{Ra=0.0757557 ,but here we have Ra=0.0757}
disp(' Armeture Current = '+string(Ia1)+' Amp');

IL=Ia1-Ish;       // Load current
disp(' Load current (IL) = '+string(IL)+' Amp');



              //  p 642       16.9
