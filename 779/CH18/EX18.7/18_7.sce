P1 = 1.013;
P2 = 1.5*P1;
Vs = 0.03; Va = Vs;
WD = (P2-P1)*Vs*100;
Pi = (P1+P2)/2;
g = 1.4;
Aa = ((g*P1*100*Vs)/(g-1))*((Pi/P1)^((g-1)/g)-1);
Vb = Va *(P1/Pi)^(1/g);
Ab = Vb*(P2-Pi)*100;
WR = Aa+Ab;
disp("kJ/rev",WR,"Work required is")
