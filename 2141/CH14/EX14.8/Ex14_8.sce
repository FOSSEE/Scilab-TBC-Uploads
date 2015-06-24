
clc
//initialisation of variables
Mx=2.197 //lbf/in^2
My=0.548 //lbf/in^2
Px=5.46 //lbf/in^2
Tx=1.854 //R
P0x=0.631 //lbf/in^2
T1=336 //R
Px1=9.39 //lbf/in^2
P0x1=100 //lbf/in^2
Mx1=2.197 //lbf/in^2
//CALCULATIONS
Py=Px*Px1//lbf/in^2
Ty=Tx*T1 //R
P0y=P0x*P0x1//lbf/in^2
//RESULTS
printf('The static pressure and temperature and stagnation pressure =% f lbf/in^2',P0y)
