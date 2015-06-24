disp('chapter 9 ex9.2')
disp('given')
disp('for circuit designed in ex 9.1 estimate minimum op-amp slew rate to give a reasonably undistorted output')
disp('Vcc=12volt,Vee=12volt and Vosat=1volt')
disp('t=500*10^(-6)s')
disp('R1=120kohm and C1=0.015*10^(-6)F')
Vcc=12
Vee=-12
Vosat=1
t=500*10^(-6)
R1=120000
C1=0.015*10^(-6)
disp('vo=+Vosat-[-Vosat]=(Vcc-1)-(Vee+1)')
vo=(Vcc-1)-(Vee+1)
disp('volts',vo)
disp('T=0.1*t')
T=0.1*t
disp('seconds',T)
disp('Smin=vo/T')
Smin=vo/T
disp('V/us',Smin)
disp('for a maximum phase shift of 2.9degree with a sine wave input')
disp('Xc1=R1/20')
Xc1=R1/20
disp('ohms',Xc1)
disp('fmin=1/(2*%pi*Xc1*C1)')
fmin=1/(2*%pi*Xc1*C1)
disp('Hz',fmin)