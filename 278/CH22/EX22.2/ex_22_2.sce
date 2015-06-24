//find...
clc
//solution
//given
N=900//rpm
w=94.26//rad/s
//(w1-w2)/w=0.02
Cs=0.02
D=650//mm
R=0.325//m
rho=7200//kg/m^3
//let m eb the mass of fly wheel
//ref fig 22.7
//total energy at E =total energy at A
//Eb=E-35
//Ec=E+375
//Ed=E+390
//Ee=E+415
//Ef=E+80
//Eg=E+340
//Eh=E-25
//Ek=E+360
//El=E
//Ea=E
//max energy is at B and min is a E
//dE=Eb-Ee=450
//dE=450//mm^2
//conveting to N-m
dE=450*5.5//N-m
//dE=m*R^2*w^2*Cs
m=dE/(R^2*w^2*Cs)//kg
printf("the mass of flywheel is,%f kg\n",m)
//let t be thickness and b be width of rim
//b=2t
//A=b*t=2*t^2
//m=A*2*%pi*R*rho=29409*t^2
t=sqrt(m/29409)//m
printf("the thicknes and width is,%f m\n,%f m\n",t,2*t)