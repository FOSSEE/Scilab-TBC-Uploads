
                             // Examle 3.10


Rl=6;                      // Load resistance
Rs=2;                      // Source resistance
Is=16;                     // Source current
I2=Is*(Rl/(Rl+Rs));        // Current through Rs
disp(' Current through Rs (with Current as source ) = '+string(I2)+' Amp');

I6=Is-I2;                  // Current through Rl
disp(' Current through Rl (with Current as source ) = '+string(I6)+' Amp');

            // After transforming the current source in to voltage source

Vs=32;                     // Source voltage 
i2=Vs/(Rl+Rs);             // Current through Rs
i6=i2;                     // Current through Rl
disp(' Current through Rs & Rl (with voltage as source ) = '+string(i2)+' Amp');





                        //    p 62       3.10


