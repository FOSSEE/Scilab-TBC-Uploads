cv = 0.718; T2 = 500; T1 = 300;
m = 1; T0 = 300;
// Case (a)
Sua = cv*log(T2/T1);
Ia = T0*Sua;
disp("kJ/kg",Ia,"The irreversibility in case a is")
// Case (b)
Q = m*cv*(T2-T1);
T = 600;
Sub = Sua-(Q/T);
Ib = T0*Sub;
disp("kJ/kg",Ib,"The irreversibility in case b is")
 
