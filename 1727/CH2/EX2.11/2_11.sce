clc 
//Initialization of variables
l=3 //m
b=2 //m
h1=0.75 //m
h2=1 //m
sg=0.9
//calculations
IP=sg*9.81*h2
F1=0.5*IP*h2
F2=IP*h1
F3=0.5*(9.81*h1)*h1
F=l*(F1+F2+F3)
ybar= (F1*(h1+ 1/3) + F2* h1/2 + F3* h1/3)/(F1+F2+F3)
//results
printf("Total force = %.2f kN",F)
printf("\n Location = %.3f m  from the base",ybar)
    
