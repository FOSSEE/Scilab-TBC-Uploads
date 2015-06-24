//Example No. 4_16
//Condition and Stability
//Pg No. 82
clear ; close ; clc ;

C1 = 7.00 ;
C2 = 3.00 ;
m1 = 2.00 ;
m2 = 2.01 ;
x = (C1 - C2)/(m2 - m1)
y = m1*((C1 - C2)/(m2 - m1)) + C1
disp(y,'y = ',x,'x = ')
disp('Changing m2 from 2.01 to 2.005')
m2 = 2.005
x = (C1 - C2)/(m2 - m1)
y = m1*((C1 - C2)/(m2 - m1)) + C1
mprintf('\n x = %i \n y = %i \n From the above results we can see that for small change in m2 results in almost 100 percent change in the values of x and y.Therefore, the problem is absolutely ill-conditioned \n',x,y)