clc
//initialisation of variables
V2= 0.75 //ft^3
P2= 1 //atm
P1= 3 //atm
T= 35 //F
e= 1.3
//CALCULATIONS
V1= ((P2*(V2)^e)/P1)^(1/e)
T2= P1*V1*(T+460)/(P2*V2)
//RESULTS
printf ('Final volume = %.2f ft^3 ',V2)
printf (' \n Final temperature= %.f R',T2)
//The answer is approximated in the textbook
