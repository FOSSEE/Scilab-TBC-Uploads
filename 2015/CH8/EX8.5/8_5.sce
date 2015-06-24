clc
//initialisation of variables
h1=176.48 //under -25 degrees temp in kj/kg
s1=0.7127 //under -25 degrees temp in kj/kgk
h2=215.17 //under 58 degrees temp in kj/kg
h3=79.71 //under 45 degrees temp in kj/kg
h4=79.71 //under 45 degrees temp in kj/kg
no=20 // number of tons
//CALCULATIONS
w=h2-h1
re=h1-h4
cop=re/w
ha=no*3.5164
cr=ha/re
pr=cr*w
//RESULTS
printf('the refrigeration effect is %2fkj/kg',re)
printf('\ncoefficient of performance is %2f',cop)
printf('\npower required is %2fkw',pr)
printf('\ncirculating rate of refrigerant is %2fkg/s',cr)
