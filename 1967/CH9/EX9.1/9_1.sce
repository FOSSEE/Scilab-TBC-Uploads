clc
//initialisation of variables
clear
w= 35.46 //gms
T= 298.2 //K
Qc= 4.03 
//CALCULATIONS
S= 4.576*(1.5*log10(w)+2.5*log10(T)+log10(Qc)-0.5055)
//RESULTS
printf ('Standard entropy = %.1f cal deg^-1 g atom^-1',S)
