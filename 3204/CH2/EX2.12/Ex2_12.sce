//Initilization of variables
W=1000 //N
OD=0.4 //m
AD=0.3 //m
AO=0.5 //m //AO=sqrt((0.4)^2+(0.3)^2)
//Calculations
Ra=W*AO/OD //N // The answer of Ra in the textbook is incorrect
Rc=W*AD/OD //N
alpha=atand(OD/AD) //degree
//Results
clc
printf('The reaction at support A is %f  N \n',Ra)
printf('The reaction at support B is %f N \n',Rc)
printf('The angle that Rc makes with horizontal %f degree \n',alpha)
