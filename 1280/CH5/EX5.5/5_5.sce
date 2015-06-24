clc
//initialisation of variables
P1= 1000 //psi
S= 0.85
P2= 350 //psi
Hl= 679.41 //ft
//CALCULATIONS
Ha= P1*2.31/S
He= Ha-(P2*2.31/S)-Hl
//RESULTS
//RESULTS
printf ('energy exptracted from the fluid = %.2f ft',He)
