clc
disp('suppose the coin is unbiased ')
disp('then probability of getting the head in a toss=1/2')
disp('then,expected no. of successes=a=1/2*400 ')
a=1/2*400 
disp('observed no. of successes =216')
b=216
disp('the excess of observed value over expected value=')
b-a
disp('S.D. of simple sampling = (n*p*q)^0.5=c')
c=(400*0.5*0.5)^0.5
disp('hence,z=(b-a)/c=')
(b-a)/c
disp('as z<1.96,the hypothesis is accepted at  5% level of significance')