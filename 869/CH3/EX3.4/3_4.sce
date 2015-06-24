clc
//initialisation of variables
L= 9 //in
B= 16 //in
B1= 6 //in
d= 2 //in
//CALCULATIONS
x= ((L*(B-B1)*(L/2)+(1/2)*L*B1*(L/3)-(%pi/4)*d^2*(L/2)))/(L*(B-B1)+(1/2)*L*B1-(%pi/4)*d^2)
y=  ((L*(B-B1)*((B-B1)/2)+(1/2)*L*B1*(B1/3+(B-B1))-(%pi/4)*d^2*((B-B1)/2)))/(L*(B-B1)+(1/2)*L*B1-(%pi/4)*d^2)
//RESULTS
printf ('x = %.2f in to the right of y-axis',x)
printf (' \n y=%.2f in above x axis',y)
