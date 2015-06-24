V=400
Z=complex(40,30)

Iph=V/Z
Il=sqrt(3)*norm(Iph)
Ptotal=sqrt(3)*Il*V*cos(atan(imag(Z)/real(Z)))

disp(Iph,Il,Ptotal)