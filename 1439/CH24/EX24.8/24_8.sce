clc
//initialisation of variables
ku= 1.52*10^-10 //year^-1
ru= 0.0453
ru1= 1.0523
Mu= 238 //gms
mu= 206 //gms
//CALCULATIONS
dt= ru*Mu/(ku*ru1*mu)
t= 2.303*log10(ru1/(ru1-(ru*Mu/mu)))/(ku*10^6)
//RESULTS
printf ('age of pitchblende  = %.f million years',t)
