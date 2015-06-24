//Initilization of variables
F=1000 //N
Lab=1 //m
Lbc=0.25 //m
Lac=1.25 //m
//Calculations
Rb=(F*Lac)/Lab //N // from eq'n 2
Ra=Rb-F //N // fom eq'n 1
//Results
clc
printf('The reaction (downwards)at support A is %f N \n',Ra)
printf('The reaction (upwards)at support B is %f N \n',Rb)
