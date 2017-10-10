//Chapter-5,Example 4,Page 123
clc();
close();

t= 30   //time in minutes

a=100

x= 25

k=(2.303/t)*log10(a/(a-x))

t_half=0.693/k

printf('the time of 50 percent completion of reaction is %.2f mins',t_half)
