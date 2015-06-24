
                // Examle 18.2

Ifs=10*10^-3;            // Maximum current
Im=100*10^-6;            // Full-scale diflection current
Rm=100;                  // Internal resistance
Ish=Ifs-Im;              // Shunt Current (Ish)
disp('Shunt Current (Ish) = '+ string(Ish)+' Amp');

Rsh=(Im*Rm)/Ish;         // Shunt Current (Rsh)
disp('Shunt Current (Rsh) = '+ string(Rsh)+' ohms');



            //  p 762     18.2