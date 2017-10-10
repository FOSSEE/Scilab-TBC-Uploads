syms G1 G2 H1 H2

a=G2/(1+(G2*H2))
b= G1*a
c= H1*(1+G2*H2)/G2          //shifting the take off point
d= b/(1+b)
Y= d/(1+(d*c))
 
disp(Y," R/C = ") 