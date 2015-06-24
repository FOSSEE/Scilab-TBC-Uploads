printf('If the yield of NH3 is 12.2mol percent,x=0.122');
x=0.122;//yield of NH3 in moles//
Kp=1.48*10^-5;//Kp value of the equation in atm^-2//
P=sqrt((256*x^2)/(27*Kp*(1-x)^4));//pressure of the system in atm//
printf('\nPressure of the system=P=%fatm',P);
