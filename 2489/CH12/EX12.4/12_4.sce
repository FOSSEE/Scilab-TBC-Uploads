clc
//Intitalisation of variables
clear
p1= 55 //per cent
P1= 744 //mm
P2= 634 //mm
MB= 18 //gms
//CALCULATIONS
MA= p1*P2*MB/((P1-P2)*(100-p1))
//RESULTS
printf ('Molecular weight of terpinene = %.f gms',MA) 
