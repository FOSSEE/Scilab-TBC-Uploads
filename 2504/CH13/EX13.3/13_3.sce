clc
//initialisation of variables
clear
bip= 135 //degrees
bop= 150 //degrees
bot= 140 //degrees
bos= 137 //degrees
r= 1.8
r1= 1.8
r2= 0.7
r3= 0.95
//CALCULATIONS
R= (1+(cotd(bip)/cotd(bos)))*r^2-r1*(cotd(bop)/cotd(bos))
R1= r2*r3^2*(1+(cotd(bip)/cotd(bos)))-(cotd(bot)/cotd(bos))
R2= (R1-R)/(R-1)
//RESULTS
printf ('R1 = %.2f',R) 
printf ('\n R2 = %.2f',R1) 
printf ('\n Torque ratio = %.2f',R2) 
