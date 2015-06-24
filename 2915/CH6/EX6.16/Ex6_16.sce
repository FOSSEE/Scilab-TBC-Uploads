clc,clear
//Example 6.16
//To convert from cartesian to polar coordinates

//part(a)
x=3 ;
y=4 ;

//53.13 is in same quadrant as(3,4)
r=sqrt(x^2+y^2) ;
theta=atand(y/x) ;
printf('PART A\n(r,theta)= %f,%f',r,theta) ;
printf('\nOR\n') ;
r=-sqrt(x^2+y^2) ;
//tan theta is +ve in 3rd quadrant
//so 180 + 53.33 is also a permissible value 
theta=180 + atand(y/x) ;
printf('(r,theta)= %f,%f',r,theta) ;

//part(b)
x=-5 ;
y=-5 ;

//225 is in same quadrant as(-5,-5)
//tan theta is +ve in 3rd quadrant
r=sqrt(x^2+y^2) ;
theta=180+ atand(y/x) ;
printf('\n\nPART B\n(r,theta)= %f,%f',r,theta) ;
printf('\nOR\n') ;
r=-sqrt(x^2+y^2) ;
theta= atand(y/x) ;
printf('(r,theta)= %f,%f',r,theta) ;
