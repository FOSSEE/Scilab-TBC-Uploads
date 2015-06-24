clear;
//clc();

// Example 4.2
// Page: 77
printf("Example-4.2  Page no.-77\n\n");

//***Data***//

// let we denote graphite by 'g' and diamond by 'd' 
// Gibb's free energies of graphite and diamond are given by
g_g = 0.00;//[kJ/mol] 
g_d = 2.90;//[kJ/mol]

// Specific volumes of graphite and diamond are given by
v_g = 5.31*10^(-1);//[kJ/(mol*kbar)]
v_d = 3.42*10^(-1);//[kJ/(mol*kbar)]

// Now from the equation 4.32 ( page 74) given in the book, we have
// (dg/dP) = v , at constant temperature
// where 'v' is specific volume
// let us denote (dg/dP) by 'D' ,so
D_g = v_g;//[J/(mol*Pa)] For graphite
D_d = v_d;//[J/(mol*Pa)] For diamond

// Now we can take our plot from P = 0( =1 ), however, total pressure is 1 atm. 
// If we consider specific volumes of the given species to be constant with changing the pressure then g-P curve will be a straight line
// So the equation of the line for graphite is 
// g = D_g*P + g_g
// and that for diamond
// g = D_d*P + g_d

P = [0:1:30]';

plot2d(P,[ D_d*P+g_d D_g*P+g_g ],style=[color("darkgreen"),color("red")]);

xlabel("Pressure, P, kbar");
ylabel("Gibb''s free energy per mol, g, kJ/mol");

printf(" Gibb''s free energy-pressure diagram for graphite-diamond system at 25 degC is as shown in the graphic window. ");
hl=legend(['Diamond, slope = 0.342 (kJ/mol)/kbar';'Graphite, slope = 0.532 (kJ/mol)/kbar']);


