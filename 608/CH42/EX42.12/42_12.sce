//Problem 42.12: Determine for the filter section shown in Figure 42.40, (a) the time delay for the signal to pass through the filter, assuming the phase shift is small, and (b) the time delay for a signal to pass through the section at the cut-off frequency.

//initializing the variables:
L = 2*0.5; // in Henry
C = 2E-9; // in Farad

//calculation:
//time delay
t = (L*C)^0.5
//time delay at the cut-off frequency
tfc = t*%pi/2

printf("\n\n Result \n\n")
printf("\n time delay is %.2E sec ",t)
printf("\ntime delay at the cut-off frequency is %.2E sec",tfc)