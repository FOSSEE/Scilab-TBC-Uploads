
                             // Examle 17.1

f=50;                 // Frequency
p=4;                  // No.Of poles
Ns=(120*f)/p;         // Synchronous speed 
N=1410;               // No.Of Revolution in rmp
I=2.9;                // I/p current
V=230;                // Supply voltage
CosQ=0.71;            // Power factor 
s=(Ns-N)/Ns;          // The Slip
disp(' The Slip is = '+string(s*100)+' %');

po=375;               // O/p power
pin=V*I*CosQ;         // I/p power
eff=po/pin;           // Efficiency
disp(' The efficiency is = '+string(eff*100)+' %');





 
                   //  p 683       17.1
