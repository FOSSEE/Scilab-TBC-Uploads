//Ex no.17.6,Page no.382
clc;clear;close;

//Initilization of Variables

P=200 //KN //Load carried by the angle 
S=0.6 //mm //size of weld
b=4.46 //cm //Distance of centre of gravity of the angle from the top shorter leg
a=10.54 //cm //Distance of centre of gravity of the angle from the top edge of the angle
sigma_s=102.5 //MPa //shear stress
//l_1=Length of the top weld
//l_2=length of the bottom weld
//L=l_1+l_2 //cm //total length weld

//Using the relation
//P=L*0.7*S*sigma_s

//After substituting values and simplifying we get
L=(P*10**3)*(0.7*S*sigma_s*10**-4*10**6)**-1 //cm  (equation 1)

//Using the relation
l_1=(L*b)*(a+b)**-1 //cm

//substituting this value in equation 1 we have,
l_2=L-l_1 //cm 

//Result
printf("Distance of centre of gravity of the angle from the top edge of the angle = %.2f cm",l_2)
