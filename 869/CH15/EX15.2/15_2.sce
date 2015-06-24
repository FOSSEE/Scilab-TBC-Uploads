clc
//initialisation of variables
P= 5000 //lb per in
Tl= 75 //kips
y1= 2.63 //in
y2= 1.37 //in
//CALCULATIONS
A= [P P ; y1*P -y2*P]
b= [Tl*10^3 ; 0]
c= A\b
L1= c(1,1)
L2= c(2,1)
//RESULTS
printf ('L1= %.2f in',L1)
printf ('\n L2= %.2f in',L2)
