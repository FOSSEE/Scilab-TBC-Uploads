syms G1 G2 G3 H1 H2 H3

a= G3/(1+G3*H1*H2)      //feedback
b=G2*a/(1+(G2*a))
c=G1*b
Y=c/(1+c*H1*H2*H3)

disp(Y,"C/R = ")
