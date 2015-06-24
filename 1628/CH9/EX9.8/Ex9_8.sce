

                     // Example  9.8

I1=10+%i*0;              // Current  i1=14.14 sin(wt) A  
I2=10+%i*17.32;          // Current  i2=28.28 sin(wt+60) A
I=I1+I2;                 // Summation of 2 Current
disp(' Summation of 2 Current is = '+string(I)+' Amp  or  37.42<40.9 ');

            // I= 20+i17.32   i.e I= 37.42<40.9

disp(' Expration for Sum of 2 Current i= 37.42 Sin(wt+40.9)A');
Im=37.42;               // Absolute Value of I
i=Im/sqrt(2);           // RMS value I
disp(' Rms Value of sum is = '+string(i)+' Amp');




          // p 318     9.8
