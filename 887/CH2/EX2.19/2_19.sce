clc
//ex2.19
R1= 20 //Ohms
R2= 15 //ohms
vs= 15 //V
R3= 5 //Ohms
k= 0.25
///CALCULATIONS
voc= (R2/R1)/((1/R1)+(1/(R2+R3))+(k/4))
isc= vs/R1
Rf= voc/isc
//RESULTS
printf ('Rf = %.2f ohms',Rf)
