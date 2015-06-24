
clc
//initialisation of variables
s3=1.7085 
s4=0.4369
T=2000 //F
T1=1000//F
T2=300//F
T3=500//F
p1=100 //lbf/in^2
Mpro=1.2716
W=Mpro/(0.26*0.521)
h1=269.6 //lbf/in^2
h2=1279.1 //lbf/in^2
g=0.26//ft
//CALCULATIONS
S=s3-s4
We=(h1-h2)+W*g*(T-T1)//Btu/lbm H2o
//RESULTS
printf('The work for the change of state of the water =% f Btu/lbm H20',We)
