//Initilization of variables
d=0.09 //m //diametre of the right circular cylinder
h=0.12 //m //height of the cyinder
W=10 //N // self weight of the bar
l=0.24 //m //length of the bar
//Calculations
theta=atand(h/d) // angle which the bar makes with the horizontal
Lad=sqrt(d^2+h^2) //m // Lad is the length of the bar from point A to point B
Rd=(W*h*cosd(theta))/Lad //N // Taking moment at A
Xa=Rd*sind(theta) //N // sum Fx=0.... From eq'n 1
Ya=W-(Rd*cosd(theta)) //N // sum Fy=0..... From eq'n 2
Ra=sqrt(Xa^2+Ya^2) //resultant of Xa & Ya
//Results
clc
printf('The horizontal reaction at A i.e Xa is %f N \n',Xa)
printf('The vertical reaction at A i.e Ya is %f N \n',Ya)
printf('Therefore the reaction at A i.e Ra is %f N \n',Ra)
printf('The reaction at D i.e Rd is %f N \n',Rd)
