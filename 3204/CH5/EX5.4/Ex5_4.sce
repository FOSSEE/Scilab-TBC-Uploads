//Initilization of variables
W=100 //N
theta=60 //degree //angle made by the ladder with the horizontal
alpha=30 //degree //angle made by the ladder with the vertical wall
Lob=4 //m // length from the horizontal to the top of the ladder touching the wall(vertical)
Lcd=2 //m // length from the horizontal to the centre of the ladder where the man stands
//Calculations
Lab=Lob*secd(alpha) //m //length of the ladder
Lad=Lcd*tand(alpha) //m
Rb=(W*Lad)/Lab //N //take moment at A
Xa=Rb*sind(theta) //N // From eq'n 1
Ya=W+Rb*cosd(theta) //N From eq'n 2
//Results
clc
printf('The reaction at B i.e Rb is %f N \n',Rb)
printf('The horizontal reaction at A i.e Xa is %f N \n',Xa)
printf('The vertical reaction at A i.e Ya is %f N \n',Ya)
