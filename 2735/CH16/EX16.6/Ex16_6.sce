clc
clear
//Initialization of variables
p=14.7 //psia
ps=0.363 //psia
n2=7.52 //moles
n1=1 //moles
//calculations
x= (n1+n2)*ps/p /(1-ps/p)
n=n1+n2+x
y1=n1/n
y2=n1/(n1+n2)
//results
printf("Final orsat composition is %d CO2 + %.2f H20 + %.2f N2",n1, x, n2)
printf("\n Percentage of co2 on a wet basis = %.1f percent",y1*100)
printf("\n percentage of co2 on a dry basis = %.2f percent",y2*100)
