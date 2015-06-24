clc
//initialisation of variables
P= 1 //psia
P1= 200 //psia
T= 750 //F
v3= 0.01614 //cu ft/lb
h1= 1399.2 //Bu/lb
h2= 976 //Btu/lb
h3= 69.7 //Btu/lb
//CALCULATIONS
dh= v3*(144/778)*(P1-P)
h4= h3+dh
Q1= h1-h4
Wt= h1-h2
Wp= h4-h3
n= (Wt-Wp)/Q1
w= 2545/Wt
//RESULTS
printf ('cycle efficency = %.3f ',n)
printf (' \n steam rate= %.2f lb steam per hphr',w)
