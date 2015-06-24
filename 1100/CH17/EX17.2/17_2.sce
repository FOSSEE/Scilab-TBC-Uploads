clc
//initialisation of variables
R= 53.31
T= 80 //F
P2= 90//psia
P1= 15 //psia
n= 1.4
n1= 1.3
cv= 0.171
//CALCULATIONS
Wk= (n/(n-1))*R*(T+460)*((P2/P1)^((n-1)/n)-1)
Wn= (n1/(n1-1))*R*(T+460)*((P2/P1)^((n1-1)/n1)-1)
Wt= R*(T+460)*log(P2/P1)
nc= Wt/Wn
nc1=Wk/Wn
////RESULTS
printf ('Thermal effeciency= %.2f ',nc)
printf (' \n Isothermal effeciency= %.2f ',nc1)
