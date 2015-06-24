//to calculate the ratio of full load speed to no load speed

clc;
V=400;
Rf=200;
If=V/Rf;
Inl=5.6;
I_a0=Inl-If;
vd=2;    //voltage drop
Ra=.18;
E_a0=V-Ra*I_a0-vd;
Ifl=68.3;
Iafl=Ifl-If;
E_afl=V-Ra*Iafl-vd;
e=.03;    //armature rxn weakens the field by 3%
k=(E_afl/E_a0)*(1/(1-e));
disp(k,'n_fl/n_nl');
