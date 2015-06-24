clc

a=1.5 //m
E=206.8*10^9 //Pa
K=10000 //N/m
I=6*10^-6 //m^4
P=6700 //N
c=0.05

k=K/a
disp(k,"foundation modulus of the equivalent continuous elastic support in Pa is=")

beta=(k/(4*E*I))^(1/4)
disp(beta)

//sigmamax=(M*c/I)=(P*c/4*beta*I)
sigmamax=((P*c)/(4*beta*I))
disp(sigmamax,"in Pa is=")

vmax=(P*beta)/(2*k)
disp(vmax,"in meter is=")
