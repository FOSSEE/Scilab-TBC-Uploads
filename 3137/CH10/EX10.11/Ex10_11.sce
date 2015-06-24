//Initilization of variables
a=100 //mm
b=150 //mm
A1=2*10^4 //mm^2
A2=5*10^3 //mm^2
A3=(%pi*(a/2)^2)/2 //mm^2
//Calculations
x=(A1*a+A2*(133.3)-A3*b)/(A1+A2-A3) //mm
y=(A1*a*0.5+A2*(116.66)-A3*((4*a*0.5)/(3*%pi)))/(A1+A2-A3) //mm
//Result
clc
printf('The centroidal distances are x=%f mm and y=%f mm',x,y)
