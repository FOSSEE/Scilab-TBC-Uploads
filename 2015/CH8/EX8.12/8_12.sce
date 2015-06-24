clc
//initialisation of variables
h1=178.73 //under -20 degrees in kj/kg
h5=185.66 //under 5 degrees in kj/kg
h3=79.71 //under 10.84 degrees in kj/kg
h6=79.71 //under 10.84 degrees in kj/kg
h4=79.71 //under 10.84 degrees in kj/kg
h2=219.33 //kj/kg
//CALCULATIONS
m1=(7*211)/(h1-h4)
mh=(5*211)/(h5-h4)
h8=((m1*h1)+(mh*h5))/(m1+mh)
poc=(m1+mh)*(h2-h8)
cop=(12*211)/poc
//RESULTS
printf('power of compressor is %2fkj/min',poc)
printf('\nrefrigerant flow rate is %2fkg/min',mh)
printf('\ncoefficient of performance is %2f',cop)
