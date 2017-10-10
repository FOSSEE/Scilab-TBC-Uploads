clc



//Variable declaration
lamda=0.58
theta1=6.45*%pi/180
theta2=9.15*%pi/180
theta3=13*%pi/180

//Calculations
dbyn1=lamda/(2*(sin(theta1)))
dbyn2=lamda/(2*sin(theta2))
dbyn3=lamda/(2*sin(theta3))
           
//Results
printf('i.  d/n =%0.3f Angstroms\n',(dbyn1))
printf('ii. d/n =%0.3f Angstroms\n',(dbyn2))
printf('iii.d/n =%0.3f Angstroms\n',(dbyn3))
