clc
disp('suppose the die is unbiased ')
disp('then probability of getting 5 or 6 with one die=1/3')
disp('then,expected no. of successes=a=1/3*9000 ')
a=1/3*9000 
disp('observed no. of successes =3240')
b=3240
disp('the excess of observed value over expected value=')
b-a
disp('S.D. of simple sampling = (n*p*q)^0.5=c')
c=(9000*(1/3)*(2/3))^0.5
disp('hence,z=(b-a)/c=')
(b-a)/c
disp('as z>2.58,the hypothesis has to be rejected  at  1% level of significance')