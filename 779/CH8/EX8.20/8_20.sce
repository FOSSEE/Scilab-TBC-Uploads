P1 = 1; T1 = 273+30; 
P2 = 3.5; T2 = 141+273 ; V = 90;
T0 = 303;
V2 = 100;
// Part (a)
g = 1.4;
T2s = T1*((P2/P1)^((g-1)/g));
disp("As T2s&gt; T2 so the process must be polytropic")
// Part (b)
p = log(P2/P1); q = log(T2/T1);
n = p/(p-q);
disp(n,"The polytropic index is")
// Part (c)
cp = 1.0035; R = 0.287;
Wa = cp*(T1-T2)-(V2^2/2)*1e-03 ;
Wt = -R*T0*log(P2/P1)-(V2^2/2)*1e-03;
Nt = Wt/Wa;
disp(Nt,"The isothermal effiency is")
// Part (d)
f12 = cp*(T1-T2) + T0*((R*log(P2/P1))-(cp*log(T2/T1))) - (V2^2/2)*1e-03 ;
I = f12-Wa ; 
disp("kW respectively",I,"and",f12,"The minimum work input and irreversibility are")
// Part (e)
n2 = (f12/Wa);
disp(n2,"Second law efficiency is")