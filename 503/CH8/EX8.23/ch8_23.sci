//to calculate pu adjusted sync reactance, feild reactance, reactive power op, rotor power angle

clc;
j=sqrt(-1);
r=10*10^6;
V_SC=13.8*10^3;
Ia=r/(sqrt(3)*V_SC);
If=226;

Iff=842;
I_SC=Ia*Iff/If;
Xsadj=(V_SC/sqrt(3))/I_SC;

va_b=10*10^6;
v_b=13800;
Xspu=Xsadj*va_b/v_b^2;disp(Xspu,'Xs(pu)');
Ra=.75;
Zs=Ra+j*Xsadj;
a=90-atand(imag(Zs)/real(Zs));

pf=.9;
phi=acosd(pf);
Pe=8.75*10^6;
Qe=Pe*tand(phi);
Vt=V_SC/sqrt(3);
Ia=(Pe/3)/(Vt*pf);
Ef=Vt+abs(Ia)*abs(Zs)*complex(cosd(90-a-phi),sind(90-a-phi));
Ef=abs(Ef)*sqrt(3);
If=Iff*Ef/V_SC;disp(If,'field current(A)');
loss=3*abs(Ia)^2*Ra;
Pmin=Pe+loss;disp(Pmin,'reactive power op(W)');

If=842;
Voc=7968;
Pmin=Pmin/3;
dl=asind((Pmin-real(Zs)*(Voc/abs(Zs))^2)/((Voc^2/abs(Zs))))+a;
disp(dl,'power angle');
Q=-(Voc/abs(Zs))^2*imag(Zs)+Voc^2*cosd(dl+a)/abs(Zs);
disp(Q,'reactive power op(VAR)');