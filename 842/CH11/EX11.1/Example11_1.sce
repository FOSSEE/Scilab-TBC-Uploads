//clear//
//Example11.1:Root locus Analysis of Linear Feedback Systems
//Continuous Time Systems
//Refer figure 11.12(a) in Openhiem &Willksy page 840
s = %s;
H = syslin('c',[1/(s+1)]);
G = syslin('c',[1/(s+2)]);
F = G*H;
clf;
evans(F,3)
