clc
//initialisation of variables
V= 1 //cp
//CALCULATIONS
SI= V*10^-2/10
BE= (V*10^-2*32.2)/(4.788*10^2)
RE= V*10^-2/(4.788*10^2*144)
//RESULTS
printf ('SI units= %.2e Pa s',SI)
printf (' \n BE units= %.2e lbm/ft s',BE)
printf (' \n Reyns units= %.2e reyn',RE)
