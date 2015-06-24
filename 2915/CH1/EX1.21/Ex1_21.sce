clc,clear
//Example 1.21
//To find values of all trigonometric values of given angle of 225

theta=225 ;//given angle in degree
//Consider a point (-1,-1) in 3rd quadrant
//This point can be used on terminal side of 225
//Thus for a basic right angled triangle formed in 3rd quadrant
adjacent = 1 ;
opposite = 1 ;
//by pythagoras theorem
hypotenuse = sqrt(adjacent^2 + opposite^2) ;

//since its third quadrant
x=-adjacent ;
y=-opposite ;
r=hypotenuse ;

sin_225 =y/r ;
cos_225 =x/r ;
tan_225 =y/x ;
csc_225 =r/y ;
sec_225 =r/x ;
cot_225 =x/y ;

printf('\nsin(%d)= %f ; cos(%d)= %f ; tan(%d)= %f ;',theta,sin_225,theta,cos_225,theta,tan_225)
printf('\ncsc(%d)= %f ; sec(%d)= %f ; cot(%d)= %f ;',theta,csc_225,theta,sec_225,theta,cot_225)
