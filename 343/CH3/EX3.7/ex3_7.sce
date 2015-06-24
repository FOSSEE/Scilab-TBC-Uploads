clc
p=10000                      //Assigning values to parameters
t=acos(0.6)
vl=440
vph=vl
il=p/(sqrt(3)*vl*cos(t))
iph=il/sqrt(3)
zph=vph/iph
zph1=20.9-%i*27.87
[res]=real(zph1)
[xc]=abs(imag(zph1))
q=sqrt(3)*vl*il*sin(t)
disp("ohms",res,"The resistance value of circuit element is")
disp("ohms",xc,"The capacitive value of circuit element is")
disp("VAR",q,"The reactive volt-ampere")