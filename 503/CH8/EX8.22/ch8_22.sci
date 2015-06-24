//to find armature current,power factor and power ip

clc;
j=sqrt(-1);
Vt=3300/sqrt(3);
Ef=4270/sqrt(3);
Pein=600000/3;
Zs=.8+j*5.5;
a=90-atand(imag(Zs)/real(Zs));
dl=asind((Pein+real(Zs)*(Ef/abs(Zs))^2)/((Vt*Ef/abs(Zs))))-a;
disp(dl,'power angle');
b=Vt-Ef*complex(cosd(-dl),sind(-dl));
Ia=b/Zs;
disp(abs(Ia),'armature current(A)');
phi=atand(imag(Ia)/real(Ia));
disp(cosd(phi),'pf');

Peinn=sqrt(3)*3300*abs(Ia)*cosd(phi);
disp(Peinn,'power ip(W)');
loss=Peinn-Pein*3;
disp(loss,'ohmic loss(W)');
