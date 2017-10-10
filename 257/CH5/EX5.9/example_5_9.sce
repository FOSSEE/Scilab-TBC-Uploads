syms H1 H2 H3 G1 G2 G3 G4

//shifting summing points before G1 and take off points after G4

a= G1*G2/(1+(G1*G2*H1))
b= G3*G4/(1+(G3*G4*H2))
c=a*b
Y= c/(1+(c*(H3/(G1*G4))))

disp(Y,"C/R = ")

