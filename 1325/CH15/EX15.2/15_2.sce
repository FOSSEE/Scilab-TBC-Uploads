//To find the natural frequencies of the longitudinal, transverse and torsional vibration of the system
clc
//given
l1=3//ft
l2=2//ft
l=l1+l2//ft
W=.5*2240//lb
k=20//in
d=2//in
Wa=2*W/5
E=30*10^6
A=%pi*(d/2)^2
d1=Wa*l1*12/(A*E)
N1=187.8/(d1)^(1/2)
I=%pi*(d)^4/64
d2=W*(l1*12)^3*(l2*12)^3/(3*E*(l*12)^3*I)
N2=187.8/(d2)^(1/2)
C=12*10^6//given
g=32.2//given
J=%pi*d^4/32
q=C*J*((1/(l1*12))+(1/(l2*12)))
n=(1/(2*%pi))*(q*g*12/(W*k^2))^(1/2)
N3=n*60
printf("\na)Longitudinal vibration = %.f per min\nb)Transverse Vibration = %.f per min\nc)Torsional Vibration = %.f per min\n",N1,N2,N3)
