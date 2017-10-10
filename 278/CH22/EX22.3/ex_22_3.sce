
clc
//solution
//given
P=150*1000//W
N=80//rpm
Ce=0.1
//(w1-w2)=0.02
D=2//m
R=1//m
rho=7200//kg/m^3
w=2*%pi*N/60//rad/s
//Cs=(w1-w2)/w
Cs=0.04
Wdpc=P*60/N//N-m
dE=Ce*Wdpc//N-m
dEm=0.95*dE
//let m eb the mass of fly wheel
//dE=m*R^2*w^2*Cs
m=dEm/(R^2*w^2*Cs)//kg
printf("the mass of flywheel is,%f kg\n",m)
//let A be the area of rim
//m=A*2*%pi*R*rho
A=m/(2*%pi*R*rho)//m^2
printf("the area of rim is,%f m^2",A)