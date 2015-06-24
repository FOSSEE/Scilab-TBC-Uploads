clc
//initialisation of variables
T= 1000 //K
T1= 400 ///K
w= 1000 //cal
E= 0 //cal
//CALCULATIONS
q= w-E
W= q*(T-T1)/T
q1= W-q
W1= -q1
//RESULTS
printf (' net work done by gas= %.1f cal',w)
printf (' \n net work done on gas = %.f cal',W1)
