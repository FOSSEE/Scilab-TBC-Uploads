clc
//initialisation of variables
h1=179.43 //under -25 degrees temp in kj/kg
h2=219.03 //kj/kg
h4=74.59 //kj/kg
//CALCULATIONS
re=h1-h4
w=h2-h1
cop=re/w
//RESULTS
printf('the refrigeration effect is %2fkj/kg',re)
printf('\ncoefficient of performance is %2f',cop)
