//clear//
//Example11.3:Root locus Analysis of Linear Feedback Systems
////Discrete time system
//Refer figure 11.16(a) in Openhiem &Willksy page 846
z = %z;
G = syslin('d',[z/((z-0.5)*(z-0.25))]);
clf;
evans(G,2)
