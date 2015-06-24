//clear//
//Example11.2:Root locus Analysis of Linear Feedback Systems
//Continuous Time Systems
//Refer figure 11.14(a) in Openhiem &Willksy page 844
s = %s;
G = syslin('c',[(s-1)/((s+1)*(s+2))]);
clf;
evans(G,2)
