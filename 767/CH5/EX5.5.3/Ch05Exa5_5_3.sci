// Scilab code Exa5.5.3: To calculate the percentage loss of intensity of gamma rays  : P.no. 226 (2011)
x_h = 5; // Half thickness of an absorber, mm
u = log(2)/x_h; // Absorption coefficient, mm^-1
x = 20; // Thickness of an absorber, mm
I_r = %e^(-u*x); // Intensity ratios, 
P_loss = I_r*100; // Percentage loss in intensity, percent
printf("\n Percentage loss in intensity : %4.2f percent",P_loss )
// Result
//        Percentage loss in intensity : 6.25 percent 