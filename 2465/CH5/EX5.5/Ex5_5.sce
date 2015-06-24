//Chapter-5,Example 5,Page 123
clc();
close();

t_half=17   //half life period

k=0.693/t_half   //rate constant

a=100

x= 75

t=(2.303/k)*log10(a/(a-x))

printf('the rate constant is k = %.5f /min',k)

printf('\n the time taken  t = %.1f min', t)
