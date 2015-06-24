clc
//initialisation of variables
m= 3 //lb
V1= 6 //cu ft
p1= 75. //psia
p2= 15 //psia
n= 1.2
Q1= 30 //Btu
//CALCULATIONS
V2= V1*(p1/p2)^(1/n)
disp(V2)
U= (m/3)*(0.480*p2*V2+35-0.480*p1*V1-35)
W= (p2*V2-p1*V1)/(1-n)
Q= U+W
W1= Q1-U
//RESULTS
printf ('Change in internal enenrgy = %.1f Btu',U)
printf (' \n Work done = %.f Btu',W)
printf (' \n Heat generated = %.f Btu',Q)
printf (' \n Work done = %.f Btu',W1)
//The answers given in the textbook are wrong.please calculate them personally.















