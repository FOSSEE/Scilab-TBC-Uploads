//laplace//
printf("Given:Poles are s=-1,(-2+i),(-2-i); zeros  s=-3+i,-3-i,Gain factor(k)=5  \n")
num=poly([-3+%i,-3-%i],'s','roots');
den=poly([-1,-2+%i,-2-%i],'s','roots');
G=(5*num)/den;
disp(G,"G(s)=")
