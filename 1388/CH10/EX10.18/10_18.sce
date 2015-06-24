clc
//initialisation of variables
p= 20.3 //percent
p1= 1.77 //percent
I= 100
n= 2
l= 300 //l mol^-1 cm^-1
l1= 30 //l mol^-1 cm^-1
l2= 10 //l mol^-1 cm^-1
l3= 200 //l mol^-1 cm^-1
//CALCULATIONS
A= [n*l n*l1;n*l2 n*l3]
b= [log10(I/p1); log10(I/p)]
c= A\b
R1=c(1,1)
R2=c(2,1)
//RESULTS
printf (' Concentration of A = %.2e mole l^-1',R1)
printf (' \n Concentration of B = %.2e mole l^-1',R2)
