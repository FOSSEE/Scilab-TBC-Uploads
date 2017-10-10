clc
//solution
//given
P=80000//N//tensile force applied
f1=100//(N/mm^2)
f2=80//(N/mm^2)
//diameter of bars in mm
//A1=(%pi/4)*D1^2//Area of bar
//P=f1*(%pi/4)*D1^2
D1=sqrt((4*P)/(f1*pi))
printf("\nthe diameter of bars is,%f mm\n",D1)
//diameter of pin
//A2=(2*%pi/4)*D2^2//area of pin
D2=sqrt((4*P)/(2*%pi*f2))
printf("\n the diameter of pin is,%f mm \n",D2)