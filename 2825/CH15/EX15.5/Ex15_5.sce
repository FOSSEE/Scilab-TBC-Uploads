//Ex15_5 Pg-775
clc

disp("The standard equation of AM wave is")
disp(" e = Ec*(1+m*sin(omega_m*t)*sin(omega_c*t)) -->eqn 1")
disp("Given the equation")
disp(" e = 20*(1+0.7*sin(6280*t)*sin(628000*t))   --eqn 2")
disp("Comparing eqn 1 and eqn 2 one obtains")
disp("(1) Modulation factor, m = 0.7")
m=0.7 //modulation factor
disp("(2) Carrier Amplitude, Ec = 20 V")
Ec=20 //carrier wave amplitude in V
disp("(3) omega_m = 6280")
omega_m=6280 //modulating frequency
Fm=omega_m/(2*%pi) //signal frequency
printf("    Signal frequency = %.0f kHz \n\n",Fm*1e-3)

omega_c=628000 //carrier frequency in Hz
Fc=omega_c/(2*%pi) 
printf("(4) Signal frequency = %.0f kHz \n\n",Fc*1e-3)

Emax=Ec+m*Ec //minimum amplitude of wave
printf("(5) Emax = %.0f V \n\n",Emax)

Emin=Ec-m*Ec //minimum amplitude of wave
printf("(5) Emin = %.0f V\n\n",Emin)

BW=2*Fm //Bandwidth
printf("(6) BW = %.0f kHZ",BW*1e-3)
