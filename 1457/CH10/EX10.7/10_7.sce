clc
//Initialization of variables
n=90 //rpm
R=2 
rho=0.0765/32.2
B=25
U=120 //fps
//calculations
vt=2*%pi*R*n/60
T=2*%pi*R*vt
Fl=rho*B*U*T
theta=asind(-T/(4*%pi*R*U))
//results
printf("Value of circulation = %d ft62/s",T)
printf("\n Transverse or lift force = %d lb",Fl)
printf("\n Position of stagnation points = %.1f",180-theta)
