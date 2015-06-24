clear 
clc
disp('Exa-7.2');
// calculating radial probability  P= (4/ao^3)*inegral(r^2 * e^(-2r/ao)) between the limits 0 and ao for r
Pr=integrate('((x^2)*%e^(-x))/2','x',0,2);// simplifying where as x=2*r/a0; hence the limits change between 0 to 2
printf('Hence the probability of finding the electron nearer to nucleus is %.3f',Pr);
