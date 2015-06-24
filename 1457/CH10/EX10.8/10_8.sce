clc
//Initialization of variables
B=36 //ft
c=6 //ft
Cl=0.8
tau=0.175 
rho=0.001756
V=300 //fps
//calculations
alphai=Cl/(%pi*B/c) *(1+tau) *180/%pi
alpha=5.4 
lift=-5.6 //degrees
alphao=alpha-alphai
alphaod=alphao-lift
alphaor=alphaod*%pi/180
eta=Cl/(2*%pi*alphaor)
Fl=Cl*rho*V^2 /2 *B*c
Fd=0.047/Cl *13680
HP=Fd*V/550
//results
printf("Friction coefficient = %.3f ",eta)
printf("\n weight of the wing = %d lb",Fl)
printf("\n Horsepower required = %d hp",HP)
