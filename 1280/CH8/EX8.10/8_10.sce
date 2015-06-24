clc
//initialisation of variables
T= 32 //lb-ft
N= 1200 //rpm
P= 2000 //psi
Q= 7.5 //gpm
//CALCULATIONS
eo= T*N*100/(P*Q*3.06)
//RESULTS
printf ('overall efficiency = %.f percent',eo)
