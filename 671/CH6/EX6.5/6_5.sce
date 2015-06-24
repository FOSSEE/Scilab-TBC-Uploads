Vl=400
Z=16+%i*12

Vp=Vl
Ip=Vp/Z
pf=cos(atan(imag(Z)/real(Z)))
Il=Ip*sqrt(3)

P=sqrt(3)*Vl*Il*pf
Q=sqrt(3)*Vl*Il*sin(acos(pf))

S=P+%i*Q

disp(Ip,Il,pf,P,Q,S)