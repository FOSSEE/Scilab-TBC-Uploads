clc
clear
//Initialization of variables
m1=121
m2=18
p1=0.0042
p2=0.0858
//calculations
massfrac= (p1*m1)/(p1*m1+p2*m2)
//results
printf("mass fractions of DMA and water are %.3f and %.3f respectively",massfrac,1-massfrac)
