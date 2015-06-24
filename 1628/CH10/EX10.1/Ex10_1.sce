
            // Example 10.1

       // From Diagram 10.2a

Vm=141+%i*0;             // Peak value of Voltage
V=Vm/1.414;              // Rms value of Voltage
v=100+%i*0;              // Here will have V=99.70, but we took v=100
R=3;                     // Resistance
wL=0.0127*100*%pi;               // Reactance
Z=R+%i*wL;               // Impedence
I=v/Z;                   // Current
disp(' The value of current = '+string(I)+' Amp   OR   '+string(abs(I))+'<'+string(atand(imag(I),real(I)))+' Amp');

       // Study state current is I=20A & Q=53.1 Lagging.
disp(' Expression for instantaneous current ==> [ 28.28sin(100%pi*t-53.1)A ] ');

P=abs(v)*abs(20)*cosd(53.1);        // Average power  ==> (I=20.032 ,so take I=20 )
disp(' Average power is = '+string(P)+' Watt');

pf=cosd(53.1);         // Power factor
disp(' Power factor is = '+string(pf)+' Lagging');




                     //  p 342           10.1