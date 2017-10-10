syms G1 G2 G3 G4 H1 H2

//shifting take off point of G4 , after G2

a=G4/G2
b= a+G3
c= G1*G2/(1+(G1*G2*H1))
d=c*b
e=d/(1+(d*H2/G1))
Y=e/(1+(e*1))

disp(Y,"C/R = ")