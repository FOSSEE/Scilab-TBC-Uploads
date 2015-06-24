clc
//initialization of varaibles
Heat=14087 //Btu/lb
x1=0.9 //lb
x2=0.05 //lb
x3=0.05 //lb
Heat2=3952 //Btu/lb
//calculations
h1=x1*Heat
h2=x2*Heat2
e=(h1+h2)/Heat
//results
printf("Efficiency = %.2f",e)
