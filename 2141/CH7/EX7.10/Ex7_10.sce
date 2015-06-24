
clc
//initialisation of variables
w=212 //F
Sliq=212 //F
T=80 //F
Sf=-1.4446 //Btu/lbm
Sh=1.4446 //Btu/lbm
Q=970.3 //Btu/lbm
T1=540 //F
//CALCULATIONS
DelS=Q/T1 //btu/lbm
S=Sf+DelS //Btu//lbm-R
Qsurr=T1*Sh //Btu/lbm
W=Q-Qsurr //Btu/lbm
//RESULTS
printf('The water equal to increase in entropy of the system plus surroundings=% f Btu/lbm',W)
