clc
//Initialization of variables
p=14.7 //psia
ps=0.363 //psia
n2=7.52 //moles
n1=1 //moles
//calculations
x= (n1+n2)*ps/p /(1-ps/p)
//results
printf("Final orsat composition is %d CO2 + %.2f H20 + %.2f N2",n1, x, n2)
