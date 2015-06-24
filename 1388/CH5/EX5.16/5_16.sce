clc
//initialisation of variables
n= 100
K= 2
V= 100 //ml
V2= 1000 //ml
n= 10
n1= 100
//CALCULATIONS
x= (K*V/(K*V+(V2/n)))^n
y= (K*V/(K*V+(V2/n1)))^n1
//RESULTS
printf (' fraction of impurity = %.4f ',x)
printf (' \n fraction of impurity = %.4f ',y)
