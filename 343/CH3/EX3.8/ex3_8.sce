clc
f=50                     //Assigning values to parameters
vl=440
p=1500
t=acos(0.2)
vph=vl/sqrt(3)
il=p/(sqrt(3)*vl*p*cos(t))
iph=il
zph=vph/iph
zph1=5.17+%i*25.3
[res]=real(zph1)
[xl]=imag(zph1)
l=xl/(2*%pi*f)
disp("ohms",res,"The resistive circuit constant is")
disp("ohms",l,"The inductive  circuit constant is")