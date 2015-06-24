
                     // Example  10.6

                // Given Z=R+iX;  i.e Z= 10-i10 

R1=10;                   // Resistance
Xl=10;                   // Inductance
f=50;                    // Frequency
Z= 10-%i*10;             // Impedance
Y=1/Z;                   // Admitance
disp(' The Admitance of Circuit is = '+string(Y)+' S');
G=0.05;                  // here G=1/R
B=0.05;                  // here B= 1/C
R=1/G;                   // Resistance
disp(' The Resistance of Circuit is = '+string(R)+' Ohm');

C=B/(2*%pi*f);           // Capacitance 
disp(' The Capacitance of Circuit is = '+string(C)+' F');



      // p 348       10.6



