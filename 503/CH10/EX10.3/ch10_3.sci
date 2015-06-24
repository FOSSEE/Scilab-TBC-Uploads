//to compute ampitudes of forward and backward stator mmf waves,magnitude of auxillary currrent and its ph angle diff

clc;
N_m=80;
N_a=100;
I_m=15*complex(cosd(0),sind(0));
I_aa=7.5*complex(cosd(45),sind(45));
I_a=7.5*complex(cosd(60),sind(60));
F_m=N_m*I_m;
F_a=N_a*I_a;
F_aa=N_a*I_aa;    //mmf at 45 angle
F_f=(1/2)*(F_m+imult(F_aa));a=abs(F_f);
disp(a,'forward field(AT)');
F_b=(1/2)*(F_m-imult(F_aa));b=abs(F_b);
disp(b,'backward field(AT)');
//1200+100*I_a*complex(sind(a),cosd(a))=0
//equating real and imaginery parts
//100*I_a*cosd(a)=0;
a=90;
    disp(a,'phase angle diff');
I_a=-1200/(100*sind(a));    disp(I_a,'auxillery current(A)');
