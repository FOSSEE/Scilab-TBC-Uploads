
//solution
//given
n=25
d1=25//mm
t1=18//mm
tu=300//N/mm^2
effm=0.95
Cs=0.1
ft=6//N/mm^2
rho=7250//kg/m^3
D=1.4//m
R=0.7//m
As=%pi*d1*t1//area of plate sheared
Fs=As*tu//N
Eps=0.5*Fs*t1//N-mm//energy req per stroke
Epm=Eps*n/1000//N-m
P=Epm/(60*effm)//W
printf("power req is,%f W\n",P)
//let t be thickness and b be width of rim
//b=2t
//A=b*t=2*t^2
dE=(9/10)*Eps//N-m
//let m be mass of wheel
Erim=0.95*dE//N-m
N=9*25//rpm
w=2*%pi*N/60//rad/s
m=Erim/(R^2*w^2*Cs)//kg
//m=A*2*%pi*R*rho=63782*t^2
t=sqrt(m/63782)//m
printf("the thickness and width is,%f m\n,%f m\n",t,2*t)
