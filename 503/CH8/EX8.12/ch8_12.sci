//to find pf

clc;
j=sqrt(-1);
Zs=.8+j*5;
Vt=3300/sqrt(3);
Pein=800*10^3/3;    //per ph
pf=.8;
Qe=-Pein*tand(acosd(pf));
//a=Ef*sind(dl-a);
//b=Ef=cosd(dl-a);
a=((abs(Zs)/Vt)*(Pein-real(Zs)*(Vt/abs(Zs))^2));
b=((abs(Zs)/Vt)*(-Qe+imag(Zs)*(Vt/abs(Zs))^2));

Ef=sqrt(a^2+b^2);

Pein=(1200/3)*1000;
a=asind((abs(Zs)/(Vt*Ef))*(Pein-pf*(Vt/abs(Zs))^2));
Qe=imag(Zs)*(Vt/abs(Zs))^2-Ef*Vt*cosd(a)/abs(Zs);
pf=cosd(atand(Qe/Pein));
disp(pf,'pf');