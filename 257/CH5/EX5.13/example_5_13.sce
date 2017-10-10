syms G1 G2 G3 G4 H1 H2

// combining G1 and G3 andseparating the points linked by summing point in the feedback path

a=(1+(G4*H2))
b=G1*(G2+G3)      //series
c=b/(1+(b*H1*H2))
Y=c*a

disp(Y,"C/R = ")