//to determine armature current,pf,power angle,mech power developed and eff

clc;
j=sqrt(-1);
Vt=3300/sqrt(3);
Ef=4270/sqrt(3);
Pein=750000/3;
Zs=.8+j*5.5;
a=90-atand(imag(Zs)/real(Zs));
dl=asind((Pein-real(Zs)*(Vt/abs(Zs))^2)/((Vt*Ef/abs(Zs))))+a;
disp(dl,'power angle(deg)');
b=Vt-Ef*complex(cosd(-dl),sind(-dl));
Ia=b/Zs;
disp(abs(Ia),'armature current(A)');
phi=atand(imag(Ia)/real(Ia));
disp(cosd(phi),'pf');
Ef=sqrt(3)*Ef*complex(cosd(-dl),sind(-dl));
Pm=sqrt(3)*abs(Ef)*abs(Ia)*cosd(dl+phi);
disp(Pm,'mech power developed(W)');
Pst=30000;
Pmnet=Pm-Pst;
eff=Pmnet/(Pein*3);disp(eff*100,'efficiency(%)');