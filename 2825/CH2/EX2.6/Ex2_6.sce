//Ex2_6 Pg-88
clc
printf("We know forbidden energy gap between conduction and valence \n bands for a semiconductor is nearly 1 eV. For Ge and Si,energy \n gap is 0.785 eV and  1.21 eV respectively at 0K. Energy gap \n decreases with increase in temperature which is represented \n by the expression . Obviously, Si and Ge will remain \n semiconductors at 1000K ambient temperature. \n\n")

disp("Eg(T) = 1.21 - 3.6*10^(-4)*T (For Si)")
T=1000 //temperature
Eg(T) = 1.21 - 3.6*10^(-4)*T
printf("\n Eg(1000) = 1.21 - 3.6*10^(-4)*1000 = %.2f eV",Eg(T))
