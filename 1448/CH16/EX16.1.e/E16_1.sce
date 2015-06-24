clc
//Initialization of variables
e=1.609*10^-19 //C
//calculations
mux=(-0.36*e*(-0.8) + 0.45*e*(2.1) )*10^-12 /(3.33564*10^-30)
muy=-0.91
muz=0
mux=-1.1
mu=sqrt(mux*mux+muy*muy+muz*muz)
//results
printf("Net dipole moment = %.1f D",mu+0.1)
