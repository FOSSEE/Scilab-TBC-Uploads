clc
//initialisation of variables
Ka= 1.8*10^-5 
n= 2 //milli moles
v= 45 //ml
n1= 0.5//milli moles
//CALCULATIONS
x= Ka*v*n1/n
C= x/v
//RESULTS
printf (' concentration of hydrogen ion = %.1e moles l^-1 ',C)
