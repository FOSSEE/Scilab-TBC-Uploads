
//calculate the magnitising current
A=0.01
l=2e-3
u=1
F=800e-6
B=F/A//flux
H=B/(4*3.14*10^-7*u)
N=(H*l)
L=150e-2
v=600
f=9.6e-4
N1=(f*L)/(v*A*4*%pi*10^-7)
N2=N1+N
n=200
M=N2/n
disp( 'Magnetising current =  '+string(M)+' A'  ,  'Total amps turns=  '+string(N2)+'  AT'  , 'amps turn iron=  '+string(N1)+'  AT' , 'amps turn for air=  '+string(N)+'  AT' )
