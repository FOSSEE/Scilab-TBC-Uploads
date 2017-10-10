syms G1 G2 G3 G4 G5 G6 G7 G8

a= G8/(1+(G8*G6*G7))         //feedback
b=a*G2*G5
c=b/(1+(b*G4*G6))
Y= G3*G1*c                     //series

disp(Y,"C/R = ")
