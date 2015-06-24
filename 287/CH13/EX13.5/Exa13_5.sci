//Determine mean path loss by two models

Lr = 31.7;
gamma1 = 5.22;
gamma2 = 3.27;
R = 30;
R0 = 1;
FAF = 24.4;


Ls1 = Lr + 10*gamma1*log10(R/R0) ;
Ls2 = Lr + 10*gamma1*log10(R/R0) + FAF ;

disp(Ls1, 'Mean path loss by 1st model (in dB)')
disp(Ls2, 'Mean path loss by 2nd model (in dB)')