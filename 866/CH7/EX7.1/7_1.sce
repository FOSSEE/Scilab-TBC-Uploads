clc
//initialisation of variables
P= 800*10^3
sigmamax= 400
//CALCULATIONS
Amin= P/sigmamax
B= sqrt(Amin/2)
//RESULTS
printf ('Amin= %.2f mm^2',Amin)
printf (' \n B=%.2f mm(Therefore the min dimensions of the column cross section are 31.6mm*63.2mm)',B)
