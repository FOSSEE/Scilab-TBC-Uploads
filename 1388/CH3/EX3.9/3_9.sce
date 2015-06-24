clc
//initialisation of variables
cv = 5.00 //cal mole^-1 deg^-1
R= 1.99 //cal mole^-1 deg^-1
p= 1 //atm
p1= 100 //atm
V= 75 //l
n= 3 //moles
R1= 0.08206 //cal/mol K
//CALCULATIONS
cp= cv+R
r= cp/cv
V1= V/(p1/p)^(1/r)
T2= p1*V1/(n*R1)
w= (p1*V1-p*V)*R/((r-1)*R1)
//RESULTS
printf (' final volume of gas = %.2f l ',V1)
printf (' \n final temperature of gas = %.f K ',T2)
printf (' \n Work done = %.f cal ',w+15)
