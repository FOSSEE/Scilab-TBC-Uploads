clc
//initialisation of variables
t= 1 //sec
P= 1000 //psi
Q= 3 //gpm
Sg= 0.85
s= 0.42
//CALCULATIONS
Hl= 2544*t*P*Q/1714
Wf= 62.4*Q*60*Sg
Tr= Hl/(Wf*s)
//RESULTS
printf ('rise in temperature of the fluid = %.2f F',Tr)
