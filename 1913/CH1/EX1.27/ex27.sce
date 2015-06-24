clc
clear
//Input data
m=21;//Mass of piston in kg
P1=600;//Pressure in the pipe 1 in kPa
P2=170;//Pressure in the pipe 2 in kPa
d1=0.10;//Diameter of the piston 1 in m
d2=0.20;//Diameter of the piston 2 in m
pi=3.14155;//Constant value of pi

//Calculations
F=(m*9.81)/1000;//Force due to mass in kN
F1=(pi/4)*d1^2*P1;//Force 1 acting on 10 cm diameter piston in kN
F2=(pi/4)*(d2^2-d1^2)*P2;//Force 2 acting on 20 cm diameter piston in kN
F3=F+F1+F2;//Total downward force in kN
P3=F3/((pi/4)*d2^2);//Pressure 3 in the gas in kPa

//Output
printf('The pressure in the gas P3 = %3.4f kPa ',P3)
