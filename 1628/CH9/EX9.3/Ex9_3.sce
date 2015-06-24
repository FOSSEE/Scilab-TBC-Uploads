

                     // Example  9.3

vm=20/2;            // Maximum value of Voltage
T=2*5*10^-3;        // Timwe Period
f=1/T;              // Frequency
w=2*%pi*f;          // Angular Frequency
disp('Angular Frequency is = '+string(w)+' rad/s');
disp('instantaneous value of Voltage  is v= 10 sin(628.3t+Q)');

           // at (t=0 v= -3.6 V)   i.e v=10sinQ

Q=asind(-0.36);    // Angle at (t=0)  ( ==> in Book Q=-158.9 given Which is wrong)
v= 10*sind(628.3*0.012*(180/%pi)-Q);
disp('the Voltage at (t=12 mS) = '+string(-v)+' Volt');




      // p306    9.3
