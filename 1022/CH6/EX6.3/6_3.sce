clc
//initialisation of variables
F= 30 //lb
w= 40 //lb
l= 10 //ft
t= 2 //sec
mu= 0.1
//CALCULATIONS
f= mu*w
W= F*l-f*l
FW= f*l
Fhp= FW/(550*t)
//RESULTS
printf ('Total work done= %.f ft lbf',W)
printf (' \n FW= %.f ft lbf',FW)
printf (' \n Frictional horsepower= %.3f hp',Fhp)
