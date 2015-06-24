cp = 1.968; cv = 1.507;
R_ = 8.314;
V = 0.3; m = 2; 
T1 = 5+273; T2 = 100+273;
R = cp-cv;
mu = R_/R;
Q12 = m*cv*(T2-T1);
W12 = 0 ;
U21 = Q12;
H21= m*cp*(T2-T1);
S21 = m*cv*log(T2/T1);
disp("kJ/kg K",R,"kg/kg mol and",mu,"Molecular weight and the gas constant of the gas are")
disp("kJ",0,"Work done")
disp("kJ",Q12,"The heat transferred")
disp("kJ",U21,"The change in internal energy ")
disp("kJ",S21,"entropy")
disp("kJ/K",H21,"enthalpy")