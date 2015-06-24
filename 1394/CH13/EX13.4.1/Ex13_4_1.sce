
clc
//initialization of variables
yn = 0.84
ynplus1 = 0.76
ystarn = 0.874
GA = 0.14 // kg-mol/sec
Al = 0.04 // m^3
//Calculations
Murphree = (yn-ynplus1)/(ystarn-ynplus1)
Kya = GA/(Al*((1/Murphree)-1))
//results
printf("the murphree efficiency is %.2f",Murphree)
printf("\n the m.t.c along with the product with a is %.2f kg-mol/m^3-sec",Kya)
