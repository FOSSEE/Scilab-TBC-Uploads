//Finding of Qm,Lm,Hm
//Given
Lp=16;
Lm=1;
Hp=4;
L1=150;
H1=7.2;
H2=16;
//To Find
Hm=H1*(Lm/Lp);
lm=L1*(Lm/Lp);
Qm=(Lp/Lm)^2*(Hp/H2)^(1/2);
disp("Lm ="+string(lm)+" meter");
disp("Hm ="+string(Hm)+" meter");
disp("Qm ="+string(Qm)+" m^3/sec");
