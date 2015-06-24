

clc
//initialisation of variables
clear
wdc= 3*sqrt(3) //ft
wdo= sqrt(3)
ac= 30 //degrees
ao= 60 //degrees
hob= 3 //ft
haf= 2.6 //ft
hfc= 3 //ft
w= 62.4 //lb/ft^3
V= 5.63 //ft^3
h= 4.3 //ft
y= 3.6 //ft
//CALCULATIONS
W1= wdc*hfc*w/2
Hbc= w*hob*(hob/2)
W2= V*w
W3= w*haf*h
Vt= W1+W2
Vht= Hbc+W3
Rt= sqrt(Vt^2+Vht^2)
A= atand(Vht/Vt)
x= (W1*(wdo-(hob/2))+Hbc*y)/Rt
OP= x/sind(A)
AP= hob+OP
//RESULTS
printf("Resultant thrust = %d lb",Rt)
printf("\n Angle = %.2f degrees ",A)
printf ('\n Distance from A till horizontal thrust = %.3f ft ',AP)
