clc
//initialisation of variables
E= 931 //Mev/amu
nc= 6
m= 1.00814 //amu
m1= 1.00898
mc= 12.0038
//CALCULAIONS
md= nc*m+nc*m1-mc
BE= E*md
//RESULTS
printf ('BInding Energy = %.1f Mev',BE)
