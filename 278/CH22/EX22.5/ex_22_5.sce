
clc
//solution
//given
N=600//rpm
w=62.84//rad/s
rho=7250//kg/m^3
ft=6*10^6//n/M^2
//REF fig 22.12
//let I be mont of inertia
//total energy at E =total energy at A
//Eb=E+160
//Ec=E-12
//Ed=E+156
//Ee=E-35
//Ef=E+162
//Eg=E
//Ea=E
//max energy is at F and min is a E
//dE=Ef-Ee=197
//dE=197//mm^2
//conveting to N-m
dE=197*13.1//N-m
//Cs=(w1-w2)/w
Cs=0.02
//let I be moment of inertia
//dE=I*w^2*Cs
I=dE/(w^2*Cs)//kg-m^2
printf("the moment of inertia is,%f kg-m^2\n",I)
//let t be thickness and b be width of rim
//b=2t
v=sqrt(ft/rho)//m/s
printf("the tangetntial velocity is,%f m/s\n",v)
//v=%pi*D*N/60=31.42*D
printf("dia of flywheel is,%d mm\n",v/31.42*1000)
//let E be total energy
E=dE/(2*Cs)//N-m
Emin=0.92*E//N-m
//let m eb bmass
m=Emin*2/(v^2)//kg
//let t be thickness and b be width of rim
//b=2t
//A=b*t=2*t^2
//m=A*2*%pi*R*rho=41686*t^2
t=sqrt(m/41686)//m
printf("the thickness and iwth of rim is,%f m\n,%f m\n",t,2*t)