//to find the natural frequencies of the torsional vibration of the system when inertia is neglected and when it is taken into account
clc
//given
g=32.3//ft/s^2
l2=25.5//in
d1=2.75//in
d2=3.5//in
C=12*10^6//modulus of rigidity
G=1/0.6//given speed ratio
Ib=54//lb in^2
Ic=850//lb in^2
Id=50000//lb in^2
Id1=Id/G^2//15.62
Ia=1500//lb in^2
la=Id1/(Id1+Ia)*66.5
J=%pi*d1^4/32
q=C*J/la//torsional stiffness
n=(1/(2*%pi))*(q*g*12/Ia)^(1/2)
nf=n*60//for minutes
//case b)
Ib1=Ib+Ic/(G^2)
a=63.15//in; distance of the node from rotor A (given)
b=3.661//in; distance of the node from rotor A (given)
N1=n*(la/a)^(1/2)
N2=n*(la/b)^(1/2)
N1f=N1*60//for minutes
N2f=N2*60//for minutes
printf("\na) The frequency of torsional vibrations n = %.1f per sec or %.f per min\nb) The fundamental frquency = %.1f per sec or %.f per min\n   and the two node frequency = %.f per sec or %.f per min",n,nf,N1,N1f,N2,N2f)
