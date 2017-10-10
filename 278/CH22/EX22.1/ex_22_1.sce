
clc
//solution
//given
D=300//mm
R=0.150//mm
Cs=0.003
N=1800//rpm
w=188.5//rad/s
rho=7250//kg/m^3
//let m eb the mass of fly wheel
//ref fig 22.6
//total energy at E =total energy at A
//Eb=E+295
//Ec=E+295-685=E-390
//Ed=E-350
//Ee=E-690
//Ef=E+270
//Eg=E
//Ea=E
//max energy is at B and min is a E
//dE=Eb-Ee=985
//dE=985//mm^2
//conveting to N-m
dE=985*0.087//N-m
//dE=m*R^2*w^2*Cs
m=dE/(R^2*w^2*Cs)//kg
printf("the mass of flywheel is,%f kg\n",m)
//let t be thickness and b be width of rim
//b=2t
//A=b*t=2*t^2
//m=A*2*%pi*R*rho=13668*t^2
t=sqrt(m/13668)//m
printf("the thicknes and width is,%f m\n,%f m\n",t,2*t)