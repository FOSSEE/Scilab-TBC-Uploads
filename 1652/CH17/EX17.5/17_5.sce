clc
//Initialization of variables
g1=0.661
g2=0.899
g3=0.405
g4=0.803
g5=0.946
g6=0.614
k=1.33
//calculations
k0=k*g3/(g1*g2)
k2=k0*g4*g5/g6
//results
printf("Equlibrium constant = %.2f lt/mol min",k2)
