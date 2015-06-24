//Initilazation of variables
F=1000 //N
theta=30 //degree //angle made by the force with the beam AB
Lab=3 //m
Lae=2 //m
Lce=1 //m
//Calculations
Re=(F*Lab*sind(theta))/Lae //N //Taking moment at A
Rd=(Re*Lce)/(Lab*sind(theta)) //N //Taking moment about C
//Results
clc
printf('The reaction at D due to force of 1000 N acting at B is %f N \n',Rd)
