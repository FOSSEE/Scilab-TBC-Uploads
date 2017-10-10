syms G1 G2 G3 H1 H2

//shifting the taake off points twice to the left
a=G1/(1+G1*H1*G2)
b=(1+(G3/G2))
c=a*b
d=G2/(1+(G2*H2))
e=c*d
f=(-H1)*G2*H2
Y=e/1+(e*f)

disp(Y,"C/R = ")
