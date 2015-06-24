//to determine m/c and pf

clc;
j=sqrt(-1);
P=230*10^6;
V=22000;
pf=1;
Ia=P/(sqrt(3)*V*pf);
Vt=V/sqrt(3);
Xs=1.2;
Ef=Vt+j*Xs*Ia;
//if Ef is inc by 30%
Ef=1.3*abs(Ef);

dl=asind((P/3)*Xs/(Ef*Vt));
Ia=((Ef*complex(cosd(dl),sind(dl)))-Vt)/(j*Xs);
disp(abs(Ia),'m/c current(A)');
disp(cosd(atand(imag(Ia)/real(Ia))),'pf');

P=275*10^6;
dl=asind((P/3)*Xs/(Ef*Vt));
Ia=((Ef*complex(cosd(dl),sind(dl)))-Vt)/(j*Xs);
disp(abs(Ia),'m/c current(A)');
disp(cosd(atand(imag(Ia)/real(Ia))),'pf');
