clc
//initialisation of variables
Fc= -1000 //lb
A= 60 //degrees
E1= 60 //degrees
E2= 60 //degrees
D= 60 //degrees
L1= 10 //ft
L2= 10 //ft
//CALCULATIONS
Ax= 0
Ay= (-Fc)*L1*cosd(D)/(L1+L2)
Dy= -Fc-Ay
Fab= Ay/sind(A)
Fae= Fab*cosd(A)
Fbe= Fab*cosd(90-E1)/cosd(90-A)
Fbc= Fab*sind(90-A)+Fbe*sind(90-E1)
Fce= Fbc*cosd(90-(180-E2-D))/cosd(90-E2)
Fde= Fae+Fbe*cosd(E1)+Fce*cosd(E2)
Fcd= (-Fc-Fbc*cosd(90-E2-D))/cosd(90-E1)
//RESULTS
printf ('Ax= %.3f lb',Ax)
printf (' \n Ay=%.2f lb',Ay)
printf (' \n Dy=%.3f lb',Dy) 
printf (' \n Fab=%.2f lb(compression)',Fab) 
printf (' \n Fae=%.2f lb(tension)',Fae)
printf (' \n Fbe=%.2f lb(tension)',Fbe)  
printf (' \n Fbc=%.2f lb(compression)',Fbc)
printf (' \n Fce=%.2f lb(compression)',Fce)
printf (' \n Fde=%.2f lb(tension)',Fde)
printf (' \n Fcd=%.2f lb(compression)',Fcd)