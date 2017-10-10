syms H G1 G2 G3

//separating the two paths we get 1+1=2 in parallel combinations

//shifting take off point after 2*G3 and then after 2*G2*G3

a=(2*G2*G3)/(1+(2*G2*G3*H/(2*G3)))
b=a/(1+(H*a))
c=G1*b
Y=c/(1+(c*(1/(2*G2*G3))))

disp(Y,"C/R = ")
