clc
//Initialization of variables
v1=20.9 //ft^3/mol
v2=23.2 //ft^3/mol
p=500 //psia
w1=198.6 //Btu/mol
//calculations
w=p*(v2-v1)*144/100*0.1285
err = (w-w1)/w
//results
printf("Work done in this case = %d Btu/mol",w)
printf("\n error = %.2f percent",err*100)
