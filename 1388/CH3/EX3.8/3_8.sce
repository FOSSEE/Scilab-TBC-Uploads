clc
//initialisation of variables
n= 2 //moles
R= 0.08206 //J/mol K
T= 25 //C
b= 0.0428 //lmole^-1
a= 3.61 //atm l^2 mole^-1
V1= 20 //l
V2= 1 //l
//CALCULATIONS
w1= n*1.987*(273.2+T)*log(V1/V2)
w= (n*R*(273.2+T)*log((V1-n*b)/(V2-n*b))-a*n^2*((1/V2)-(1/V1)))*(1.987/0.08206)
//RESULTS
printf (' minimum work= %.f cal ',w1+3)
printf (' \n minimum work= %.f cal ',w+6)
