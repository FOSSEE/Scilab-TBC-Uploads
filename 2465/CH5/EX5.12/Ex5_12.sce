//Chapter-5,Example 12,Page 126
clc();
close();

a1=100

x1=1

t1=1

k=2.303*log10(a1/(a1-x1))/t1

t2=60    //time in minutes

a2=100 

//assume (a2-x2)= y

y= 1/(10^(k*t2/2.303)/a2)

printf('the undecomposed is %.2f ',y)

//mistake in textbook
