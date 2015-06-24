
                    // Example  11.6

f=150*10^3;                  // Frequency
Bw=75*10^3;                  // Band width
Q=f/Bw;                      // Q-Factor
disp(' Q-Factor is  = '+string(Q));
               // since Q < 10   there for we need to solve by Equation
               // 75= f2-f1    &   150= root(f1*f2)
               // will get Eq ( f1^2+ 75f1- 22500= 0 ) by Eliminating f2
               // by factorization we have f1=( 117.1kHz or -192.1kHz )
f1=117.1; 
f2=75+f1;
disp(' The half Power Frequencies are f1= '+string(f1)+' kHz   &  f2= '+string(f2)+' kHz');



      //   p 382      11.6



