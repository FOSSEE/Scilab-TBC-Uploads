clc
//initialisation of variables
Vf= 0.019014 //ft^3/lbm
Vg= 1.4249 //ft^3/lbm
T= 425 //fahrenheit
quality= 60 //%
//CALCULATIONS
Vfg= Vg-Vf
V= (quality/100)*Vg+(1-(quality/100))*Vf
V1= Vf+(quality/100)*Vfg
V2= Vg-(1-(quality/100))*Vfg
//RESULTS
printf ('Vfg= %.4f ft^3/lbm',Vfg)
printf (' \n V= %.4f ft^3/lbm',V)
printf (' \n V= %.4f ft^3/lbm',V1)
printf (' \n V= %.4f ft^3/lbm',V2)
