//Given that
l = 1.2*10^-2  //in meter
b = 1.2*10^-2  //in meter
h = 15*10^-2  //in meter
resistivityIron = 9.68*10^-8  //in ohm.m

//Sample Problem 27-4(1)
printf("**Sample Problem 27-4(1)**\n")
R1 = resistivityIron*h/(l*b)
printf("The resistance of the block is equal to %eOhm\n", R1)

//Sample Problem 27-4(2)
printf("\n**Sample Problem 27-4(2)**\n")
R2 = resistivityIron*l/(b*h)
printf("The resistance of the block is equal to %eOhm", R2)