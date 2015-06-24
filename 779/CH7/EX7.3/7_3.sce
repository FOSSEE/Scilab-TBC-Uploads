// Part (a)
m = 1;
T1 = -5+273;
T2 = 20+273;
T0 = 0+273;
cp = 2.093;
cv = 4.187;
lf = 333.3;
Q = m*cp*(T0-T1)+1*333.3+m*cv*(T2-T0);
Sa = -Q/T2;
Ss1 = m*cp*log(T0/T1);
Ss2 = lf/T0;
Ss3 = m*cv*log(T2/T0);
St = Ss1+Ss2+Ss3;
Su = St+Sa;
disp("kJ/K",Su,"The entropy change of the universe is")
// Part (b)
S = 1.5549; // S = S4-S1
Wmin = T2*(S)-Q;
disp("kJ",Wmin,"The minimum risk required is")