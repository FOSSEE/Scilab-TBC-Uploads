clc
//initialisation of variables
H= 540 //cal gram ^-1
T= 95 //C
T1= 100 //C
m= 18 //gms
R= 1.987 //cal /mole K
P= 760 //mm of Hg
//CALCULATIONS
H1= m*H
P1= P/(10^(H1*(T1-T)/(2.303*R*(273+T)*(273+T1))))
//RESULTS
printf (' heat of vapourisation= %.f mm of Hg',P1)
