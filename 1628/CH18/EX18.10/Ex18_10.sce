

                     // Examle 18.10

w=0.004;              // width of the coil
l=0.005;              // Length of the coil
A=w*l;                // Area of the coil
B=0.1;                // Megnetic flux density
n=80;                 // No.Of turns
tc=0.5*60*10^-6;      // Controling torque
td=3*10^-3;           // Deflecting torque
I=tc/(B*n*A);         // Current
disp('Current (I) = '+string(I)+' Amp');



     //   p 777         18.10