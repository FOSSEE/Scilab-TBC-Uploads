clc
//initialisation of variables
T= 20 //C
T1= -10 //C
q= 1000 //cal
//CALCULATIONS
e= (273+T1)/(T-T1)
w= (T-T1)*q/(273+T1)
//RESULTS
printf (' maximum efficiency = %.1f ',e)
printf (' \n minimum work = %.f cal',w)
