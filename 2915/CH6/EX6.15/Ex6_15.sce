clc,clear
//Example 6.15
//To convert from polar to cartesian coordinates

//part(a)
r=2 ;
theta=30 ;
x=r*cosd(theta) ;
y=r*sind(theta) ;
printf('(a)(x,y)= (%f,%f)\n',x,y) ;

//part(b)
r=3 ;
theta=3*%pi/4 ;
x=r*cos(theta) ;
y=r*sin(theta) ;
printf('(b)(x,y)= (%f,%f)\n',x,y) ;

//part(c)
r=-1 ;
theta=5*%pi/3 ;
x=r*cos(theta) ;
y=r*sin(theta) ;
printf('(c)(x,y)= (%f,%f)',x,y) ;
