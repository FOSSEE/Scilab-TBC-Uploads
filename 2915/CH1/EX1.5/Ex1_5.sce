clc,clear
//example 1.5
//To find values of all trigonometric functions for angles A and B

//Angle at vertex A
opposite = 3;
adjacent = 4;
hypotenuse=5;

sin_A = opposite / hypotenuse;
cos_A = adjacent / hypotenuse;
tan_A = opposite / adjacent;
csc_A = hypotenuse/opposite;
sec_A = hypotenuse/adjacent;
cot_A = adjacent / opposite;
printf('ANGLE A')
printf('\nsin(A)=  %.1f   ; cos(A)= %.2f;   tan(A)= %.2f;\n',sin_A,cos_A,tan_A)
printf('csc(A)=  %.3f ; sec(A)= %.2f;   cot(A)= %.2f;',csc_A,sec_A,cot_A)

//Angle at vertex B
opposite = 4;
adjacent = 3;
hypotenuse=5;

sin_B = opposite / hypotenuse;
cos_B = adjacent / hypotenuse;
tan_B = opposite / adjacent;
csc_B = hypotenuse/opposite;
sec_B = hypotenuse/adjacent;
cot_B = adjacent / opposite;
printf('\n\nANGLE B')
printf('\nsin(B)=  %.1f   ; cos(B)= %.2f;   tan(B)= %.2f;\n',sin_B,cos_B,tan_B)
printf('csc(B)=  %.2f  ; sec(B)= %.2f;   cot(B)= %.2f;',csc_B,sec_B,cot_B)
