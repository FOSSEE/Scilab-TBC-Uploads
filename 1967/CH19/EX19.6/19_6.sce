clc
//initialisation of variables
clear
f1= 20.66 //kcal
h1= 21.6 //kcal
e1= 50.34 //kcal
f2= 0 //kcal
f3= -56.70 //kcal
f4= -26.25 //kcal
h2= 0 //kcal
h3= -68.32 //kcal
h4= -49.5 //kcal
e2= 49.00 //kcal
e3= 16.75 //kcal
e4= 35 //kcal
n1= 2
n2= 1.5
n3= 1
T= 25 //C
//CALCULAIONS
dF= n1*f4-(n1*f1+f3)
dH= n1*h4-(n1*h1+h3)
dS= n1*e4-(n1*e1+e3+n2*e2)
dS1= (dH-dF)*1000/(273.2+T)
//RESULTS
printf ('free energy  = %.2f kcal',dF)
printf ('\n heat of formation  = %.1f kcal',dH)
printf ('\n Entropy = %.1f E.U',dS)
printf ('\n Entropy using heat of formation and free energy  = %.1f E.U',dS1)
