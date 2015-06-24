//Problem 29.05: Determine for the parallel network shown in Figure 29.9 the values of inductance L for which the network is resonant at a frequency of 1 kHz.

//initializing the variables:
RL = 3; // in ohms
fr = 1000; // in Hz
Xc = 10; // IN ohms
Rc = 4; // in ohms

//calculation:
XL1 = (((Rc^2 + Xc^2)/Xc) + ((((Rc^2 + Xc^2)/Xc)^2) - 4*(RL^2))^0.5)/2
XL2 = (((Rc^2 + Xc^2)/Xc) - ((((Rc^2 + Xc^2)/Xc)^2) - 4*(RL^2))^0.5)/2
wr = 2*%pi*fr
//inductance
L1 = XL1/wr
L2 = XL2/wr

printf("\n\n Result \n\n")
printf("\n inductance is either %.2E H or %.2E H",L1, L2)