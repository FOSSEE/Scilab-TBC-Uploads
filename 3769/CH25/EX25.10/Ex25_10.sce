clear
//Given
a=1.66*10**-27             //Kg
c=3*10**8
mp=1.00727
mn=1.00866
mo=15.99053

//Calculation
E=(a*c**2)/1.6*10**-19
m1=8*mp+8*mn-mo
a1=m1*E

//Result
printf("\n Energy equivalent of one atomic mass unit is %0.1f  Mev/c**2",a1*10**32)
