clc
//initialisation of variables
w1= 500 //lb/min
h1= 132.9 //Btu/lb
h2= 1150 //Btu/lb
h3= 180 //Btu/lb
//CALCULATIONS
w2= w1*(h3-h1)*60/(h2-h3)
//RESULTS
printf ('Steam supplied to the hater = %.f lb/hr',w2)
