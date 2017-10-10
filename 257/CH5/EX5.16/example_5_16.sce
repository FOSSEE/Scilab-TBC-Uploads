syms G1 G2 G3 H1 H2 

// combine the two summing points
a= G3+G1
b= G2/(1-(G2*H1))
c= a*b
Y=c/(1+c*H2)

disp(Y,"C/R = ")