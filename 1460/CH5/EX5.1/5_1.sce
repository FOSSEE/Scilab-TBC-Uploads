clc
//Initialization of variables
Tr=540 //R
Te=2000 //R
m=200 //B/lbm
//calculations
eta=1-(Tr/Te)
Qr=m*(1-eta)
//results
printf("Heat rejected = %d B/lbm",Qr)
