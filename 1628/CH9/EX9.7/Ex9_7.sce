

                     // Example  9.7

I1=10+%i*0;                    // Sinusoidal Current I1
I2=10+(%i*10*sqrt(3));         // Sinusoidal Current I2
I=I1+I2;                       // Resultant Current
disp(' resultant Current is = '+string(I)+' Amp  OR  ('+string(abs(I))+' <'+string(atand(imag(I),real(I)))+' Amp )');





        // p 318  9.7
