// Part (a)
T1 = 273;
T2 = 373;
m = 1 ;
cv = 4.187;
Ss = m*cv*log(T2/T1); // S = S2-S1
Q = m*cv*(T2-T1);
Sr = -(Q/T2);
S = Ss+Sr;
disp("kJ/K",S,"The entropy change of the universe is")
// Part (b)
T3 = 323;
Sw = m*cv*(log(T3/T1)+log(T2/T3));
Sr1 = -m*cv*(T3-T1)/T3;
Sr2 = -m*cv*(T2-T3)/T2;
Su = Sw+Sr1+Sr2;
disp("kJ/K",Su,"The entropy change of the universe is")

