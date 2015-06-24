
            // Example 12.3

Z1=100;              // Impedence Z1 in Delta-connection load
R2=20;               // Resistance R2 in Delta-connection load
f=50;                // Frequency
L2=0.191;            // Inductance
X2=2*%pi*f*L2;       // Reactance X2 in Delta-connection load
Z2=sqrt(R2^2+X2^2);  // Impedence Z2 in Delta-connection load
Q2=atand(60/20);     // Phase angle
C3=30*10^-6;         // Capacitor
Z3=1/(2*%pi*f*C3);   // Impedence Z3 in Delta-connection load
Q3=90;               // Leading phase angle
I1=415/Z1;           // Phase current I1 in loads RY
disp(' Phase current I1 in loads RY = '+string(I1)+' Amp');

I2=415/Z2;           // Phase current I2 in loads YB
disp(' Phase current I2 in loads YB = '+string(I2)+' Amp');

I3=415/Z3;           // Phase current I3 in loads BR
disp(' Phase current I3 in loads BR = '+string(I3)+' Amp');

IR=sqrt(I1^2+I3^2+(2*I1*I3*cosd(30)));       // Current in the liner conductor R
disp(' Current in the liner conductor R = '+string(IR)+' Amp');

QY=Q2-60;             // Phase diffrence between I2-I1
IY=sqrt(I1^2+I2^2+(2*I1*I2*cosd(QY)));       // Current in the liner conductor Y
disp(' Current in the liner conductor Y = '+string(IY)+' Amp');

QB=180-QY-30;         // Phase diffrence between I2-I3
IB=sqrt(I2^2+I3^2+(2*I2*I3*cosd(QB)));       // Current in the liner conductor B
disp(' Current in the liner conductor B = '+string(IB)+' Amp');




               // p 411            12.3







