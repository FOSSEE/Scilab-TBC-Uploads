//Variable Declaration:
T = [-40,-20,0,10,12,30,40,50,60,80,100,150,200,250,300,400,500]
u = [1.51,1.61,1.71,1.76,1.81,1.86,1.90,1.95,2.00,2.09,2.17,2.38,2.57,2.75,2.93,3.25,3.55]

//Calculations:
[B,A] = reglin(T,u)

//Results:
printf("The value of A in regression model is: %.4f",A)
printf("The value of B in regression model is: %.4f",B)
