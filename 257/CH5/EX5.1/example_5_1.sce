syms G1 G2 G3 G4 H1 H2

a= G1*G4               //series
b=  (a)/(1-(a*H1))     //positive feedback
c= (b*(G2+G3))         // G2 AND G3 are in parallel
Y= c/(1+(c*H2))       // negetive feedback

disp(Y,"C/R =")