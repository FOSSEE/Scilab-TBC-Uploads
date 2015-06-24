
fr=35*10^9
w=2*%pi*fr
Es=9.9
Er=36
uo=4*%pi*10^-7
Eo=8.8154*10^-12
z1=1.2892*10^8/(fr*sqrt(Es))
z2=1.2892*10^8/(fr*sqrt(Er))
r=0.835*10^-3
printf("\n1.2892*10^8/(fr*sqrt(Es))=%.3e m",z1)
printf("\n1.2892*10^8/(fr*sqrt(Er))=%.3e m",z2)
ko=w*sqrt(uo*Eo)
y=sqrt((ko*r)^2*(Er-1)-5.784)
printf("\ny=%.3f",y)
k_=2.405/r+y/(2.405*r*(1+2.43/y+0.291*y))
printf("\nk_=%.3e",k_)
a1=sqrt(k_^2-ko^2*Es)
a2=sqrt(k_^2-ko^2)
B=sqrt(ko^2*Er-k_^2)
printf("\na1=%.3e\na2=%.3e\nB=%.3e",a1,a2,B)
d=10^-3
t=.25*10^-3
h=1/B*(atan(a1/(B*tanh(a1*t)))+atan(a2/(B*tanh(a2*d))))
printf("\nh=%.3e m",h)


