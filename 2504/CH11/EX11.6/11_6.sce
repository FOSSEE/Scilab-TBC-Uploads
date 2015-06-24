clc
//initialisation of variables
clear
r= 1 //in
b= 0.75 //in
w= 180 //rev/sec
B= 120 //degrees
Bo= 150 //degrees
ro= 3 //ft
bo= 0.5 //ft
Vbo= 180 //ft/sec
w1= 62.4 //lbf/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
Q= -2*%pi*(r/12)^2*(b/12)*w*tand(B)
Vfo= Q/(2*%pi*(ro/12)*(bo/12))
Vwo= Vbo*(ro/12)+Vfo*cotd(Bo)
C= w1*Q*Vwo*(ro/12)/g
dp= w1*Vwo*w*(ro/12)/g
ari= atand(-Q*0.8/(2*%pi*(r/12)^2*(b/12)*w))+180
i1= ari-B
//RESULTS
printf ('Flow rate = %.2f ft^3/sec',Q)
printf ('\n radial velocity= %.2f ft/sec',Vfo)
printf ('\n outlet whirl velocity= %.2f ft/sec',Vwo)
printf ('\n Torque= %.2f lbf ft',C)
printf ('\n Stagnant pressure = %.f lbf/ft^2',dp)
printf ('\n Incidence angle = %.1f degrees',i1)
