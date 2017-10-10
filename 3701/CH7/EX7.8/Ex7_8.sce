////Given
L1=0.4
L2=0.6
L=1                                                //Say

//Calculation
//
dx=(L2-L1)*L
P1=2/L*(sin(%pi*L/2.0*L))**2*dx
//for first excited state
P2=2/L*(sin(2*%pi*L/2.0*L))**2*dx
//for second excited state
P3=2/L*(sin(3*%pi*L/2.0*L))**2*dx

//Result
printf("\n (a) probability for ground state  %0.3f ", P1)
printf("\n (b) probability for first excited state  %0.1f ",P2)
printf("\n (c) Probability for second excited state  %0.3f ", P3)
