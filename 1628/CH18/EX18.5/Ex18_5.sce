
                // Examle 18.5

Im=50*10^-6;              // Current sensitivity
Rm=1000;                  // Internal resistance
Vf=50;                    // volt-meter range
Rs=(Vf/Im)-Rm;            // The Value of Resister (Rs)
disp ('The Value of Resister (Rs) = '+string(Rs/1000)+' kilo-ohms');

n=Vf/(Im*Rm);            // The Voltage Multiplying Factor (N)
disp('The Voltage Multiplying Factor (N) = '+string(n));
 


              // p 767    18.5