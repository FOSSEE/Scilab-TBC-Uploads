// Initiization of variables
W1=10 //kN //point load acting at D
W2=20 //kN // point load acting at C at an angle of 30 degree
W3=5 //kN/m // intensity of udl acting on span EB of 4m
W4=10 //kN/m // intensity of varying load acting on span BC of 3m
M=25 //kN-m // moment acting at E
theta=30 //degree // angle made by 20 kN load with the beam
Lad=2 //m
Leb=4 //m
Laf=6 //m //distance between the resultant of W3 & point A
Lac=11 //m
Lag=9 //m //distance between the resultant of W4 and point A
Lbc=3 //m
Lab=8 //m
// Calculations
Xa=20*cosd(theta) //kN // sum Fx=0
Rb=((W1*Lad)+(-M)+(W3*Leb*Laf)+(W2*sind(theta)*Lac)+((W4*Lbc*Lag)/2))/Lab //kN // taking moment at A
Ya=W1+(W2*sind(theta))+(W3*Leb)+(W4*Lbc/2)-Rb //kN // sum Fy=0
Ra=sqrt(Xa^2+Ya^2) //kN // resultant at A
//Results
clc
printf('The horizontal reaction at A i.e Xa is %f kN \n',Xa)
printf('The vertical reaction at A i.e Ya is %f kN \n',Ya)
printf('The reaction at A i.e Ra is %f kN \n',Ra)
printf('The reaction at B i.e Rb is %f kN \n',Rb)
