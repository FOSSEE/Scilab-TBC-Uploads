clc
p=100000                   //Assigning values to parameters
il=80
vl=1100
f=50
vph=vl/sqrt(3)
iph=il
zph=vph/iph
t=acosd(p/(sqrt(3)*vl*il))
zph1=5.21-%i*6
[r]=real(zph1)
[xc]=abs(imag(zph1))
c=1/(2*%pi*f*xc)
disp("ohms",r,"The resistive circuit constant is")
disp("ohms",xc,"The capacitive circuit constant is")
disp("farads",c,"The capacitance is")