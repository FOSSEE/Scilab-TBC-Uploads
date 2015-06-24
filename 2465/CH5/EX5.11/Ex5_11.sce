//Chapter-5,Example 11,Page 126
clc();
close();

a=0.1  //initial concentration of reactants

x=0.2*a

t=40   //time 

k=x/(a*t*(a-x))

t_half=1/(a*k)

x1=0.75*a

t1=x1/(k*a*(a-x1))

printf('the rate constant is k = %.4f l/mol.min',k)

printf('\n the half life period is %.f mins',t_half)

printf('\n the time required to complete 75 percent reaction is %.f mins',t1)
