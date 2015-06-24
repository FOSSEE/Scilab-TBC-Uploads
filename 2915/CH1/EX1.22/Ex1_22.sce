clc,clear
//Example 1.22
//To find values of all trigonometric values of given angle of 330

theta=330 ; //given angle in degree
//Consider a point (sqrt(3),-1) in 4th quadrant
//This point can be used on terminal side of 330
//Thus for a basic right angled triangle formed in 4th quadrant
adjacent = sqrt(3);
opposite = 1 ;
hypotenuse = sqrt(adjacent^2 + opposite^2);
//by pythagoras theorem

//since its 4th quadrant
x=adjacent ;
y=-opposite ;
r=hypotenuse ;

sin_330 =y/r ;
cos_330 =x/r ;
tan_330 =y/x ;
csc_330 =r/y ;
sec_330 =r/x ;
cot_330 =x/y ;

printf('\nsin(%d)= %f ; cos(%d)= %f ; tan(%d)= %f ;',theta,sin_330,theta,cos_330,theta,tan_330)
printf('\ncsc(%d)= %f ; sec(%d)= %f ; cot(%d)= %f ;',theta,csc_330,theta,sec_330,theta,cot_330)
