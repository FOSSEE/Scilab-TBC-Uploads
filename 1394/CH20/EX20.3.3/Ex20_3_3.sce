
clc
//initialization of variables
//Given q = h*DeltaT and 0.6q = (1/(1/h)+10/12*0.03)*delta T , divide both to get 
l = 10/12 //ft
k = 0.03 //Btu/hr-ft-F
//Calculations
l2 = 2//feet
k2 = 0.03 //Btu/hr-ft-F
h = ((1/0.6)-1)*k/l //Btu/hr-ft^2-F
U = 1/((1/h)+(l2/k2))//Btu/hr-ft^2-F
Savings = U*100/h
//Results
printf("The savings due to insulation is about %.f percent",Savings)

