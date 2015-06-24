clc 
//initialisation of variables
g= 32.2 //ft/sec^2
h1= 16.63 //cm
h2= 10.18 //cm
h3= 16.53 //cm
//CALCULATIONS
H1= h1-h2
H2= h3-h2
p= (H1^1.5-H2^1.5)*100/H1^1.5
//RESULTS
printf ('Percent decrease in discharge = %.2f per cent ',p)
