//ques-18.27
//Finding partial pressure of hydrogen at which free energy change is zero
clc
G=-10.1;//free energy change (in kJ/mol)
T=500;//temperature (in K)
p1=10;//partial pressure of HI (in atm)
p2=0.001;//partial pressure of I2 (in atm)
//On solving, log10(K) = (-G)/(2.303*8.314*T)
K=11.36;
p3=(p1/(K*sqrt(p2)))^2;
printf("The partial pressure of hydrogen is %.0f atm.",p3);
