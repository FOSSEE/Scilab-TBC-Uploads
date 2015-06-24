clc
//initialisation of variables
P= 2500 //psi
Q= 3 //gpm
p= 5 //Bhp
N= 1725 //rpm
//CALCULATIONS
eo= P*Q*100/(1714*p)
To= p*5250/N
//RESULTS
printf ('input torque = %.2f lb-ft',To)
