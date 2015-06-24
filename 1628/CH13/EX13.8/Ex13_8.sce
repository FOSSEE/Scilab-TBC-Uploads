

                       // Example  13.8

                        // We Know that Pi= Ph+ Pe=( Af+ Bf^2 )
                        // there for at 60Hz   100= 60A+ 3600B
                        //           at 40Hz   60 = 40A+ 1600B
                        // After Solving Equation We have 
A=1.167;                // Alphabet for Simlicity
B=0.00834;              // Alphabet for Simlicity
f=50;                   // Frequency
Ph=A*f;                 // Hysteresis Loss
disp('Hysteresis Loss ( at 50 Hz ) = '+string(Ph)+' Watt');

Pe=B*f^2;               // Eddy-Current Loss
disp('Eddy-Current Loss ( at 50 Hz ) = '+string(Pe)+' Watt');






                  //   p 495       13.8
