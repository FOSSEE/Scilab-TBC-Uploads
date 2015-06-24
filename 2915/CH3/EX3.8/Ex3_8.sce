clc,clear
//Example 3.8
//To determine values of functions of sum of 2 angles when functions of 2 angles are given

sin_A = 4/5 ;
cos_A = 3/5 ;

sin_B = 12/13 ;
cos_B =  5/13 ;

//Apb refers to A plus B
sin_ApB = sin_A*cos_B +  cos_A*sin_B ;
cos_ApB = cos_A*cos_B -  sin_A*sin_B ;
tan_ApB = sin_ApB / cos_ApB ;

printf('sin(A+B) = %f\n',sin_ApB) ;
printf('cos(A+B) = %f\n',cos_ApB) ;
printf('tan(A+B) = %f\n',tan_ApB) ;
