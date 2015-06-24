
                   // Examle 16.4

E1=220;                 // Induced emf at N=750 rpm
E2=250;                 // Induced emf (i.e E=250)
N1=750;                 // Speed of mechine at E1=220
N2=(E2/E1)*N1;          // Speed at Constant emf E2=250
disp('Speed at Constant emf = '+string(round(N2))+' rpm');

               // Using formula { Q2/Q1= E2/E1 x N1/N2 }

e=(E2*N1);              // Numerator of above formula
n=(E1*600);             // Dinominator of above formula { by taking N2= 600 }
E=e/n;                  // Induced emf
inc=(E-1.00)*100;       // % incriment in Flux
disp(' % incriment in Flux = '+string(round(inc))+' %');





               //   p 633        16.4   

