clear ;
clc;
// Example 6.2
printf('Example 6.2\n\n');
//Page no. 147
// Solution

// Basis 1 hour
fd= 1000.0 ;//feed rate-[L/hr]
cfd= 500.0;//Weight of cells per litre- [mg/L]
dn= 1.0 ;//Density of feed-[g/cm^3]
wp= 50.0 ;// Weight percent of cells in product stream
Pg=(fd*cfd*dn)/(1000*wp*.01) ;// Mass balance for cells 
printf(' Product flow(P) per hour is %.1f g\n',Pg);
Dg= (fd*dn*1000) - Pg*(wp*.01) ;// Mass balance for the fluid
printf('  Discharge flow per hour is %.3e g\n',Dg);