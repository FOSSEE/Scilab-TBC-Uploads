//to determine Xs(saturated),scr,Xs(unsat)and If,generator current

clc;
MVA_b=400;
kV_b=22;
Ib=MVA_b/(sqrt(3)*kV_b);
ohm_b=kV_b/(sqrt(3)*Ib);

If=1120;
Voc=kV_b/sqrt(3);
Isc=13.2;
Xssat=Voc/Isc;disp(Xssat,'Xs(saturated)(ohm)');
Xss=Xssat/ohm_b;disp(Xss,'Xs(saturated)(pu)');
scr=1/Xss;disp(scr,'SCR');
Isc=Ib;
Voc=24.4/sqrt(3);
Xsunsat=Voc/Isc;disp(Xsunsat,'Xs(unsaturated)(ohm)');
Xsuns=Xsunsat/ohm_b;disp(Xsuns,'Xs(unsaturated)(pu)');
Iff=If*scr;disp(Iff,'generator current(A)');
