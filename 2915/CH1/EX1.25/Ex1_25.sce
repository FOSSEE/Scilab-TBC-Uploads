clc,clear
//Example 1.25
//To find sin_theta and tan_theta when cos_theta is given

cos_theta = -4/5;
adjacent =4 ; hypotenuse =5 ;
opposite = sqrt(hypotenuse ^2 - adjacent ^2) //by pythagoras theorem 

//minus sign of cos_theta implies 2nd or 3rd quadrant
//Possibility 1 : 2nd quadrant
x= -adjacent ;
y=  opposite ;
r=  hypotenuse ;
sin_theta = y/r ;
tan_theta = y/x ;
printf('POSSIBILITY 1:Theta in 2nd quadrant\n')
printf('sin(theta)= %.2f ; tan(theta) = %.2f;  \n\n',sin_theta,tan_theta)

//Possibility 2 : 3rd quadrant
x=-adjacent ;
y=-opposite ;
r=hypotenuse ;
sin_theta = y/r ;
tan_theta = y/x ;
printf('POSSIBILITY 2:Theta in 3rd quadrant\n')
printf('sin(theta)= %.2f ; tan(theta) = %.2f;  ',sin_theta,tan_theta)
