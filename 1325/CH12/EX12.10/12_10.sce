//to find the moment of inertia of the flying wheel
clc
//given
ihp=25
N=300//rpm
Ks=2/100//given
u=2.3//work done by gases during expansion is u(2.3) times that during compression
E=ihp*33000/N//indicated work done per revolution
E1=E*2//indicated work done per cycle
We=E1/(1-1/u)//work done by gases during expansion
AB=We*2/%pi//the maximum torque from fig 290
AC=E/(2*%pi)//mean turning moment
CB=AB-AC//maximum excess turning moment
Ef=(CB/AB)^2*We//fluctuation of energy
Ke=Ef/E
w=%pi*N/30//angular speed
g=32.2//ft/s^2
moi=g*Ef/(w^2*Ks)//moment of inertia
printf("Moment of inertia of the flywheel = %.f lb ft^2",moi)

//answer is not EXACT due to the approximations in calculations done by the author of the book
