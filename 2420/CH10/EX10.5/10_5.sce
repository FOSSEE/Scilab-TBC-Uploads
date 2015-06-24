clc
clear
//Initialization of variables
n1=400 //rpm
mv1=10000 //lb
mv2=15000 //lb
h1=2 //in of water
hp1=4 //hp
//calculations
n2=mv2/mv1 *n1
h2=h1*(n2/n1)^2
hp2=hp1 *(n2/n1)^3
//results
printf("The speed = %d rpm",n2)
printf("\n The pressure = %.1f in of water",h2)
printf("\n Power = %.1f hp",hp2)
