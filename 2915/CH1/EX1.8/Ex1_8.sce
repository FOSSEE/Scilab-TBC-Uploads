clc,clear
//example 1.8
//To find all trigonometric functions when sine functions is given

sin_A=2/3 //given
//since sine function  is opposite/hypotenuse and 
//T-ratios are defined interms of ratio of sided of right triangle
opposite=2;
hypotenuse=3;
BC = opposite;
AB = hypotenuse;
b  = sqrt(hypotenuse^2- opposite^2) //by pythagoras theorem
adjacent = b;

cos_A = adjacent / hypotenuse;
tan_A = opposite / adjacent;
csc_A = hypotenuse/opposite;
sec_A = hypotenuse/adjacent;
cot_A = adjacent / opposite;

printf('for ANGLE A')
printf('\nsin(A)=  %.4f ; cos(A)= %.4f;   tan(A)= %.4f;\n',sin_A,cos_A,tan_A)
printf('csc(A)=  %.4f ; sec(A)= %.4f;   cot(A)= %.4f;',csc_A,sec_A,cot_A)
