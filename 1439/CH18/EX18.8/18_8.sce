clc
//initialisation of variables
e= 23.06 //kcal mole^-1
E= 4.476 //ev
h= 6.627*10^-27 //ergs sec
c= 3*10^10 //cm/sec
v= 4395 //cm^-1
e1= 8060 //ev
N= 6*10^23
//CALCULATIONS
D= E*e+(h*c*N*v/(2*10^3*4.184*10^7))
D1= E*e1+(v/2)
//RESULTS
printf (' dissociation energy = %.1f kcal mole^-1',D)
printf (' \n dissociation energy = %.f cm^-1',D1+26)
