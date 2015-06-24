clc
//initialisation of variables
clear
h= 1.439
T= 300 //K
w= 565 //cm^-1
R= 1.98 //cal /mol K
n= 0.56
//CALCULATIONS
Qr= h*w/T
Cv= n*R
//RESULTS
printf ('Vibrational Partition = %.2f ',Qr)
printf ('\n Cv = %.2f cal deg^-1 mole^-1',Cv)
