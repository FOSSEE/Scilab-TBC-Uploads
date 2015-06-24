clc
//initialisation of variables
h1= 1371 //Btu/lb
h2s= 1149 //Btu/lb
h3= 118 //Btu/lb
Q1= 1253 //Btu/lb
W= 156 //Btu/lb
Qw= 680 //Btu/lb
//CALCULATIONS
Qh= h1-W-h3
y= W+0.9*Qh
r= y/Q1
x= Qh+Qw
z= y/x
//RESULTS
printf ('Fraction of energy supplied = %.2f ',r)
printf (' \n Fraction of energy supplied= %.2f ',z)
