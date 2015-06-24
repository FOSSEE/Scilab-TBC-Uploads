
clc
//initialisation of variables
p=2.17 //Btu
p1=0.34//btu
p2=1.17//Btu
q=0.66//Btu
//CALCULATIONS
yCO2=q/p//Btu
yCO=p1/p//Btu
yO2=p2/p//Btu
//RESULTS
printf('The equilibrium composition =% f Btu',yO2)
