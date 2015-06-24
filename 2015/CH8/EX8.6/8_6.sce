clc
//initialisation of variables
h1=176.48 //under -25 degrees temp in kj/kg
h2=215.17 //kj/kg
h4=74.59 //kj/kg
//CALCULATIONS
re=h1-h4
w=h2-h1
cop=re/w
//RESULTS
printf('the refrigeration effect is %2fkj/kg',re)
printf('\ncoefficient of performance is %2f',cop)
