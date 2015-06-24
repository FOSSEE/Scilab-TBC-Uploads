//Problem 29.07: In an LR–C network, the capacitance is 10.61 nF, the bandwidth is 500 Hz and the resonant frequency is 150 kHz. Determine for the circuit (a) the Q-factor, (b) the dynamic resistance, and (c) the magnitude of the impedance when the supply frequency is 0.4% greater than the tuned frequency.

//initializing the variables:
C = 10.61E-9; // in Farad
bw = 500; // in Hz
fr = 150000; // in Hz
x = 0.004

//calculation:
//Q-factor
Q = fr/bw
wr = 2*%pi*fr
//dynamic resistance, RD
Rd = L*Q/(C*wr*L)
del = x
Z = Rd/(1 + (2*del*Q*%i))
Zmag = (real(Z)^2 + imag(Z)^2)^0.5

printf("\n\n Result \n\n")
printf("\n (a)Q-factor %.2f",Q)
printf("\n (b)dynamic resistance %.2E ohm",Rd)
printf("\n (c)magnitude of the impedance %.2E ohm",Zmag)