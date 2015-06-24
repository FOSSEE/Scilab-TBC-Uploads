//Chapter-5,Example 6,Page 123
clc();
close();

t_half=1600   //half life period

k=0.693/t_half   //rate constant

a=100

x= 80

t=(2.303/k)*log10(a/(a-x))

printf('\n the time taken  t = %.2f years', t)

//mistake in textbook
