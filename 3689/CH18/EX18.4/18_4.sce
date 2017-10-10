////
//Variable Declaration
t1by2 = 2.05e4       //Half life for first order decomposition of N2O5, s
x = 60.              //percentage decay of N2O5

//Calculations
k = log(2)/t1by2
t = -log(x/100)/k

//REsults
printf("\n Rate constant of the reaction: %4.3e 1/s",k)

printf("\n Time required for 60 percent decay of N2O5: %4.3e s",t)

