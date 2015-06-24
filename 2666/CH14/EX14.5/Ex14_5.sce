
clc
//initialisation of variables
p=1000//cu ft 
t=820//F
t1=460//F
v=18.00//cu ft
h=0.729//ft
h1=0.488//ft
a=1400//ft
q=1545//ft
//CALCULATIONS
P=(h*(t+t1)/(v-h1))-(a/v^2)//atmosphere
R=(1/v)*(q)*(t+t1)/1//lb per sq ft 
//RESULTS
printf('the perfect gas equation =% f lb per sq ft',R)
