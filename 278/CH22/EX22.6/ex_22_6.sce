
//solution
//given
N=300//rpm
w=31.42//rad/s
ft=5.6*10^6//N/m^2
rho=7200
//let D be dia
//v=(%pi*D*N)/60=15.71*D//m/s
//ft=rho*v^2=1.8*10^6*D^2
D=sqrt(ft/(1.8*10^6))//m
R=D/2//m
printf("the dia of flywheel is,%f m\n",D)
//ref fig 22.13
//total energy at E =total energy at A
//Eb=E-32
//Ec=E+376
//Ed=E+109
//Ee=E+442
//Ef=E+132
//Eg=E+358
//Eh=E-16
//Ei=E+244
//Ej=E
//Ea=E
//max energy is at E and min is a B
//dE=Eb-Ee=474
//dE=474//mm^2
//conveting to N-m
dE=474*27.3//N-m
//Cs=(w1-w2)/w
Cs=0.03
//dE=m*R^2*w^2*Cs
m=dE/(R^2*w^2*Cs)//kg
printf("the mass of flywheel is,%f kg\n",m)
//let t be thickness and b be width of rim
//b=4t
//A=b*t=4*t^2
//m=A*2*%pi*R*rho=159624*t^2
t=sqrt(m/159624)//m
printf("the thickness and iwth of rim is,%f m\n,%f m\n",t,4*t)