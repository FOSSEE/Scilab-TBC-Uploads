clc,clear
//example 1.7
//To find values of all trigonometric functions for 60 degree

//take an equilateral triangle of side 2 and divide it by half
//all 3 angles of equilateral triangle are same as 60 degree
//the bisector of angle is also the perepndicual bisector of oppsoite side
// Thus, A=60 B=30 C=90 in new triangle as shown in figure

AB = 2; c=AB;
AC = AB/2; b=AC;
a=sqrt(c^2-b^2)//pythagoras theorem

//For angle A=60 degree
opposite = a;
adjacent = b;
hypotenuse = c;
sin_60 = opposite / hypotenuse;
cos_60 = adjacent / hypotenuse;
tan_60 = opposite / adjacent;
csc_60 = hypotenuse/opposite;
sec_60 = hypotenuse/adjacent;
cot_60 = adjacent / opposite;
printf('ANGLE = 60 degree')
printf('\nsin(60)=  %.4f ; cos(60)= %.4f;   tan(60)= %.4f;\n',sin_60,cos_60,tan_60)
printf('csc(60)=  %.4f ; sec(60)= %.4f;   cot(60)= %.4f;',csc_60,sec_60,cot_60)

//For angle ABC=30 degree
opposite = b;
adjacent = a;
hypotenuse = c;
sin_30 = opposite / hypotenuse;
cos_30 = adjacent / hypotenuse;
tan_30 = opposite / adjacent;
csc_30 = hypotenuse/opposite;
sec_30 = hypotenuse/adjacent;
cot_30 = adjacent / opposite;
printf('\n\nANGLE = 30 degree')
printf('\nsin(30)=  %.4f ; cos(30)= %.4f;   tan(30)= %.4f;\n',sin_30,cos_30,tan_30)
printf('csc(30)=  %.4f ; sec(30)= %.4f;   cot(30)= %.4f;',csc_30,sec_30,cot_30)
