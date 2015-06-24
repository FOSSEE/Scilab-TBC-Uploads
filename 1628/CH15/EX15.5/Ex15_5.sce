
                             // Examle 15.5


R2=0.05;                     // Resistance 
s=0.04;                      // Slip 
X20=0.1;                     // Standstill reactance
El=100;                      // Voltage
E20=El/1.732;                // Induced emf per phase
Z2=sqrt(R2^2+(s*X20)^2);     // Impedance
E2=s*E20;                    // Emf with (s= 0.04)

I2=E2/Z2;                    // Rotor current for (s=0.04) 
disp(' Rotor current for (s=0.04) = '+string(round(I2))+' Amp');

CosQ2=E2/Z2;                 // CosQ2=E2/Z2 = 0.998  ==> ,here take ( 0.99 )
Q2=acosd(0.99);              // Phase diffrence for (s= 0.04)
disp(' Phase diffrence between rotor voltage & current for (s=0.04) = '+string(Q2)+' Digree');

s1=1;
E21=s1*E20;                  // Induced emf per phase for s=1
Z21=sqrt(R2^2+(s1*X20)^2);   // Impedance   ==>  Z21= 57.73  ,but take (57.5)
I21=57.5/Z21;                // Rotor current for (s=1) 
disp(' Rotor current for (s=1) = '+string(round(I21))+' Amp');

Q21=acosd(R2/Z21);           // Rotor current for (s=1) 
disp(' Phase diffrence between rotor voltage & current for (s=1) = '+string(Q21)+' Digree');




          // p 597     15.5

