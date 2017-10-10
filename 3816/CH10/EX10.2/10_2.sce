clc;
clear;
W=500;
V=3.3;
f=50;
R=0.02;//Resistance
Xl=0.08;//Leakage reactance
Pap=0.67;//pole arc to pole pitch ratio
Kr=0.34;//Reaction coefficient 
Vpu=1;//Per unit voltage corresponding to the voltage 3.3
rsc=1;//short ciecuit ratio
xsdu=1.25;//Unsaturated synchronous reactance
disp('Simple mmf method')
Foa=1;
F1a=1;
F2a=1.78;
pf1=0.8;
pf2=acos(pf1);
Eta=1.26;
F2b=0.94;
Etb=0.94;
Ea=(Eta-Foa)/Foa;
Eb=(Etb-F1a)/F1a;
disp(Eb,Ea,'The regulations for simple mmf methods are:')
disp('Synchronous impedance method:')
Et1=1.80;
Et2=0.90;
E1a=(Et1-Foa);
E2a=Et2-F1a;
disp(E2a,E1a,'The regulation for synchronous impedance method:')
disp('Adjusted synchronous impedance method')
E1=Foa+((pf1+(pf2*%i))*(R+(Xl*%i)));
OF=1.4;
OH=1.06;
K1=OF/OH;
K2=1.5;
xsdu=1.25;
xsd=0.1+((xsdu-0.1)/((1.2*%i)*(1+0.76)^(1/2)));
Et3=1.55;
E1b=0.97;
OF1=1.18;
OH1=0.97;
K1o=OF1/OH1;
K2o=0.76;
xsd1=0.87;
Et4=0.85;
E3a=Et3-Foa;
E3b=Et4-F1a;
disp(E3b,E3a,'The regulations for adjusted synchronous impedance method is:')
disp('Reaction method')
Et5=1.28;
Et6=0.94;
E4a=Et5-Foa;
E4b=Et6-F1a;
disp(E4b,E4a,'The regulations for reaction method:')
