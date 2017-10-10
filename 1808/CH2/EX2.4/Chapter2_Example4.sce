clc
clear
//INPUT DATA
//C8H18 + 12.5 O2 + (12.5*3.76) N2 = 8 Co2 + 9 H2O + 47 N2// Stoichiometric equation for combustion of octane with 100 percent of air
//C8H18 + 12.5 O2 + (12.5*3.76) N2 = 8 Co2 + 9 H2O + 47 N2// Stoichiometric equation for combustion of octane with 200 percent of air
a=8;//Carbon balance
b=9;//Hydrogen balance
d=94;//Nitrogen balance
c=12.5;//Oxygen balance

//CALCULATIONS
x=a+b+c+d;//Total moles of products
x1=100*a/x;//Molal analysis of CO2
x2=100*b/x;//Molal analysis of H20
x3=100*c/x;//Molal analysis of O2
x4=100*d/x;//Molal analysis of N2

//OUTPUT
printf('(i)Molal analysis of CO2 is %3.2f percentage \n (ii)Molal analysis of H2O is %3.2f percentage \n (iii)Molal analysis of O2 is %3.2f percentage \n (iv)Molal analysis of N2 is %3.2f percentage',x1,x2,x3,x4)

