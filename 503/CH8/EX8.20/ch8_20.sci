//to determine the magnitude of Eg,Em and min value of Em to remain m/c in synchronism

clc;
j=sqrt(-1);
V_base=400;
kva_base=10;
MW_base=10;
Pm=8/10;
Vt=1;
pf=.8;
Ia=Pm/(Vt*pf);
Ia=Ia*complex(pf,sind(acosd(pf)));
Em=Vt-j*Ia*pf;
Emm=abs(Em)*V_base;
dl_m=atand(imag(Em)/real(Em));disp(dl_m,'dl_m(deg)');
Eg=Vt+j*Ia*(pf+.2);
Egg=abs(Eg)*V_base;
dl_g=atand(imag(Eg)/real(Eg));disp(dl_g,'dl_g(deg)');
dl_gm=dl_g-dl_m;disp(dl_gm,'relative angle(deg)');

dl_m=90;
Emmin=.8*.8/1;
disp(Emmin*V_base,'min value of Em(V)');