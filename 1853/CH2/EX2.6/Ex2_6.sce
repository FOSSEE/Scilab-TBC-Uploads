
//calculate the magnetising force relative permeability
A=5e-4
l=25e-2
N=100
I=2
F=0.3e-3
H=(N*I)/l
u=(F*l)/(N*I*A*4*3.14*10^-7)
B=(u*H*4*3.14*10^-7)
I1=5
F1=0.58e-3
H1=(N*I1)/l
u1=(F1*l)/(N*I*A*4*3.14*10^-7)
B1=(u1*H*4*3.14*10^-7)
disp('flux density B1='  +string(B1)+  'Wb/m^2'  ,'flux density  B ='  +string(B)+  'Wb/m^2' )
