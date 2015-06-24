clc
//initialisation of variables
W= 1000 //lb/ft
L= 10 //in
b1= 4 //in
h1= 1 //in
b2= 1 //in
h2= 6 //in
//CALCULATIONS
Mmax= 12500 //lb ft
y= ((b1*h1*h1/2)+(b2*h2*((h2/2)+h1)))/(b1*h1+b2*h2)
Ina= (b1*h1^3/12)+b1*h1*(y-h1/2)^2+(b2*h2^3/12)+b2*h2*(h1+h2-y-(h2/2))^2
sigmat= Mmax*12*y/Ina
sigmac= Mmax*12*(h1+h2-y)/Ina
//RESULTS
printf ('maximum tensile stress= %.2f psi',sigmat)
printf ('\n maximum compressive bending stress= %.2f psi',sigmac) 
