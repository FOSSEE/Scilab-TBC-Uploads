//Initilization of variables
Ws=2 //kN //weight of scooter
Wd=0.5 //kN //weight of driver
Lab=1 //m
Led=0.8 //m
Leg=0.1 //m
//Calculations
Rc=((2*Leg)+(Wd*Led))/Lab //kN //take moment at E
Ra=(2+Wd-Rc)/2 // kN // as Ra=Rb,(Ra+Rb=2*Ra)
Rb=Ra // kN
//Results
clc
printf('The reaction at wheel A is %f kN \n',Ra)
printf('The reaction at wheel B is %f kN \n',Rb)
printf('The reaction at wheel C is %f kN \n',Rc)
