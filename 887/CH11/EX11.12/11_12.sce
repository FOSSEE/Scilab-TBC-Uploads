clc 
//initialisation of variables
Rin= 1 //Mohms
Rs1= 100 //kohms
Rs2= 100 //kohms
Ioff= 84 //Amperes
Voff= 5 //mV
//CALCULARIONS
Vioff= Rin*Ioff*10^-3*(Rs1+Rs2)/(2*(Rin+10^-3*(Rs1+Rs2)))
Vvoff= Voff*Rin/(Rin+10^-3*(Rs1+Rs2))
//RESULTS
printf ('Vioff = %.f mV ',Vioff)
printf ('\n Vvoff = %.2f mV ',Vvoff)
