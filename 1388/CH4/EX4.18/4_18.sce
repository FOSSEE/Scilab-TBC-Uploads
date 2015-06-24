clc
//initialisation of variables
H= -57.7979 //cal
H1= -68.3174 //cal
S= 45.106 //cal deg^-1
S1= 16.716 //cal deg^-1
T= 25 //C
//CALCULATIONS
H2= (H-H1)*1000
S2= S-S1
G= H2-(273.16+T)*S2
//RESULTS
printf (' Gibs free energy= %.1f cal',G)
