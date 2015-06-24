// to estimate at full load internal induced emf, voltage drop caused y armature rxn, and field current ~ armature rxn demagnitisation

clc;  
I_f=[0 0.2 0.4 0.6 0.8 1 1.2 1.4];
Voc=[10 52 124 184 220 244 264 276];
plot(I_f,Voc);
xlabel('I_f(A)');
ylabel('Voc');

I_afl=50;
R_a=.3;
vd=I_afl*R_a;
V=240;
E_a=V+vd;
disp(E_a,'internal induced emf(V)');
V_oc=276;        //from magnetising curve,I_f=1.4
V_d=V_oc-E_a;
disp(V_d,'armature rxn vol drop(V)');
I_f=0.36;
K_ar=I_f/I_afl;
disp(K_ar,'armature rxn demagnetisation');