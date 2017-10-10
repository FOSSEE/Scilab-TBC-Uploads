syms G1 G2 G3 H1

//shifting summing points to left
//using accosiative law to exchange the summing points, redcusing minor feedback loop and reducing parallel combination of G3/G1 and 1 

a= (G3/G1)+1
b=G1/(1+G1)
c=a*b*G2
Y=c/(1+(c*H1))

disp(Y,"C/R = ")