V=400
w=2*50*%pi
P=25000
pf1=0.7
theta1=acos(pf1)
Il1=P/(sqrt(3)*V*pf1)*exp(-%i*theta1)
Ip1=Il1/sqrt(3)


pf2=0.85
theta2=acos(pf2)
Il2=P/(sqrt(3)*V*pf2)*exp(-%i*theta2)
Ip2=Il2/sqrt(3)

Ic=Ip2-Ip1                      ////calculation mistake in the book at this step
C=real(Ic/(V*w*%i))
disp(C)