//Initilization of variables
d=635 //mm diameter of the drum
P=178 //N
mu=1/3 //coefficient of friction
l1=100 //mm 
l2=660 //mm
theta1=60 //degrees
GD=d/2 //mm
//Calculations
//Taking moment about point C
Tb=(P*(l1+l2))/(l1*sind(theta1)) //N
CD=((d/2)-(l1*cosd(theta1/2)))/sind(theta1/2) //mm
//from fig 9-22(b) 
theta=asind(GD/CD) //degrees
//from fig9-22(c)
w_d=180+30+theta //degrees
w=(w_d)*(%pi/180) //radians
//As Tc is greater than Tb
Tc=Tb*(exp(mu*w)) //N
M=(Tc-Tb)*GD //N.mm
an=M/1000 //N.m
//Result
clc
printf('The braking moment required is %fN-m',an)
//Note the unit of the final enswer carefully
