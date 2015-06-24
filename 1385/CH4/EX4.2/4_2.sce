clc
//initialisation of variables
m= 0.0346 //gms
V= 800 //ml
P= 742 //mm
M= 32 //gms
p= 400 //mm
//CALCULATIONS
c= m*1000/V
g= c*760/(P*M)
K= g*22.4
k= c/P
c1= k*p
//RESULTS
printf (' concentration of oxygen= %.4f gram per litre',c)
printf (' \n moles dissolved = %.5f moles',g)
printf (' \n Bunsen absorption = %.4f litre',K)
printf (' \n grams of oxygen dissolved = %.4f gram per litre',c1)
