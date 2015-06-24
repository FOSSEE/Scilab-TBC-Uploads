clc,clear
//Example 1.20
//To find values of all trigonometric values of given angle of 120

theta=120; //given angle in degree
//Consider a point (-1,sqrt(3)) in 2nd quadrant
//This point can be used on terminal side of 120
//Thus for a basic right angled triangle formed in second quadrant
adjacent = 1;
opposite = sqrt(3);
//by pythagoras theorem
hypotenuse = sqrt(adjacent^2 + opposite^2);

//since its third quadrant
x=-adjacent;
y= opposite;
r=hypotenuse;

sin_120 =y/r ;
cos_120 =x/r ;
tan_120 =y/x ;
csc_120 =r/y ;
sec_120 =r/x ;
cot_120 =x/y ;

printf('\nsin(%d)= %f ; cos(%d)= %f ; tan(%d)= %f ;',theta,sin_120,theta,cos_120,theta,tan_120)
printf('\ncsc(%d)= %f ; sec(%d)= %f ; cot(%d)= %f ;',theta,csc_120,theta,sec_120,theta,cot_120)
