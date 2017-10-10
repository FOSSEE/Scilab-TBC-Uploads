syms G1 G2 G3 G4 H1 H2

a= G1*G2           //shifting the take off point
b=  a/(1+(a*H2))   
c=(1+(G3/G2))
Y= b*c*(G4/(1+G4*H1))   

disp(Y,"C/R = ")