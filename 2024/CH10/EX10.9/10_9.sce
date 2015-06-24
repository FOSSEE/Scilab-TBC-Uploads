clc
//Initialization of variables
ps=0.64 //psia
p=14.7 //psia
M=29
M2=46
//calculations
xa=ps/p
mb=xa*9/M *M2/(1-xa)
//results
printf("percentage = %d percent",mb*100)
