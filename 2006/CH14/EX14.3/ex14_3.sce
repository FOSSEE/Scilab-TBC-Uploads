clc;
// (a).Balancing of chemical equation
// The unbalanced equation for the process is C8H18 + O2 + N2 → CO2 + H2O + N2
x=8; // Carbon balance
y=9; // Hydrogen balance
z=12.5; // Oxygen balance in reverse order
n=z*3.76; // Nitrogen Balance
disp ("(a).Balancing of chemical equation");
printf ("\n C8H18 + %0.1f O2 + %d N2 → %d CO2 + %d H2O + %d N2 \n ",z,n,x,y,n);
// (b).The theoretical air-fuel ratio
a=1; // Mole of C8H18
AF1=(z+n)/a; //The theoretical air-fuel ratio on mole basis
ma=28.84; // Molecular mass of air 
mc=114; // Molecular mass of C8H18
AF2=(AF1*ma)/(a*mc); // The theoretical air-fuel ratio on mass basis
disp ("kg air / kmol C8H18",AF2,"The theoretical air-fuel ratio on mass basis = ","kmol air / kmol C8H18",AF1,"The theoretical air-fuel ratio on mole basis = ","(b).The theoretical air-fuel ratio");
