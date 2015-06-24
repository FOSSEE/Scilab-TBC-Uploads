

                             // Examle 15.7

v1=400/1.732;                              // Phase voltage
s=0.02;                                    // Slip
p=4;                                       // No.Of poles
f=50;                                      // Frequency
R2=0.332;                                  // Resistance R2
X2=0.464;                                  // Reactance X2
Ns=(120*f)/p;                              // Synchronous speed 
N=Ns*(1-s);                                // Rotor speed
disp(' The rotor speed is = '+string(N)+' rmp');

V1=231+%i*0;                               // Supply voltage
Xg=26.3;                                   // Reactance Xg
X1=1.106;                                  // Reactance X1
R1=0.641;                                  // Resistance R1
Vth={V1*(%i*Xg)}/(R1+%i*(X1+Xg));          // Thevenin's voltage
Zth={%i*Xg*(R1+%i*X1)}/(R1+%i*(X1+Xg));    // Thevenin's impedance
Rl={(1-s)/s}*R2;                           // Mechanical load 

I1=Vth/(Zth+R2+%i*X2+Rl);                 // stator current 
disp(' Stator current = '+string(I1)+' Amp  or  ('+string(abs(I1))+' <'+string(atand(imag(I1),real(I1)))+' Amp )');


Q=atand(imag(I1),real(I1));               // Power factor angle
pf=cosd(Q);                               // Power factor
disp(' Power factor is = '+string(pf)+' Lagging');

RL=340;                                   // Rotational losses
po=(3*12.84^2*Rl)-RL;                     // O/p power  ==> ( taken I1=12.84 )
disp(' O/p power = '+string(abs(po))+' Watt');

pin=3*V1*12.82*0.998;                     // I/p power  ==> ( taken I1=12.82 & pf= 0.998)
disp(' I/p power = '+string(abs(pin))+' Watt');

n=po/pin;                                 // Efficiency of motor
disp(' Efficiency of motor = '+string(abs(n*100))+' %');





              //   p 603     15.7




