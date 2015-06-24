clc;
//page 166
//problem 4.5
// we  have given 1)u=.5 and 2)u=.3
// efficiency n is calculated by using formula n= (u^2) / (2+u^2) *100 %
//for u=0.5
u1=0.5;
n1= (u1^2) / (2+u1^2) *100 ;
disp(n1,'efficiency in % is');
// Hence only 11.1111% of total power is in sidebands.
//for u=0.3
u2=0.3;
n2= (u2^2) / (2+u2^2) *100;
disp(n2,'efficiency in % is');
// Hence only 4.3062% of the total power is the useful power (power in sidebands)