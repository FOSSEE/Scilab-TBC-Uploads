clc
//initialisation of variables
H= -68317.4 //cal
S= 16.716 //cal
S1= 49.003 //cal
S2= 31.211 //cal
T= 25 //C
//CALCULATIONS
H1= 2*H
S3= 2*S-(S1+2*S2)
G= H1-(T+273.16)*S3
//RESULTS
printf (' Gibs free energy= %.1f cal',G)
