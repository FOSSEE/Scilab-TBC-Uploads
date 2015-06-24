
////calculate the mutual inductance between the two coil
N1=50
N2=400
A=150e-4
l=200e-2
u=2500
s=l/(4*3.14*10^-7*A*u)
M=(N1*N2)/s
dI1=24
dt=0.03
eM2=M*dI1/dt
disp('induced emf=   '+string(eM2)+'  volts'  , 'Mutual inductance=  '+string(M)+'  henry'  ,  's='+string(s)+'  AT/Wb')
