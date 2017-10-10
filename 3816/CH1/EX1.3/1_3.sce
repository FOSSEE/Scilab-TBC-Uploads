clc;
clear;
f=50;//Frequency of transformer in Hz
Ai=0.032;//Ferromagnetic area in m^2
Aw=0.07;//Window area in m^2
Bm=1.5;//Flux density in T
J=2.7;//RMS current density
Kw=0.3;//Space factor
//case1:
disp('To find the rating of the transformer:')
S=2.22*f*(Bm)*J*(Ai)*(Aw)*(Kw)*(1e6);//Rating of transformer in VA
disp(S,'The rating of the transformer is')
