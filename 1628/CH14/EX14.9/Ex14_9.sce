

                    // Example  11.9

f=50;                      // Frequency
N=120;                     // Speed
p=(120*f)/N;               // Number Of poles
disp('(a) The No.of Poles = '+string(p));

Pf=1;                      // Power fector
Va=100*10^6;               // VA-Rating
Rt=Va*Pf;                  // kW-Rating
disp('(b) The kW rating = '+string(Rt)+' Watt');

Vl=11*10^3;                // Star-connected voltage
Il=Va/(sqrt(3)*Vl);        // Current rating (Il)
disp('(c) The Current rating (Il) = '+string(round(Il))+' Amp');

po=100*10^6;                // Power
n=0.97;                     // Efficiency of motor
Pi=po/n;                    // I/P Power (Pi)
disp('(d) The I/P Power (Pi) = '+string(Pi)+' Watt');

t=Pi/(2*3.14*N*0.0166);     // Prime Torque
disp('(e) The Prime Torque = '+string(t)+' Nm');



      // p 573      14.9
