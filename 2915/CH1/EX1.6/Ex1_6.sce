clc,clear
//example 1.6
//To find values of all trigonometric functions for 45 degree

//Consider a square of side 1 and divide it half diagonally
//ABC is now an isosceles triangle 
//angle A and B are now equal and = 45 degree

AC=1;
BC=1;
AB=sqrt(AC^2+BC^2) //by pythagoras theorem
c=AB //we denote AB by c as its opposite to C

//conside angle BAC=45 degree
opposite = BC;
adjacent = AC;
hypotenuse = c;
sin_45 = opposite / hypotenuse;
cos_45 = adjacent / hypotenuse;
tan_45 = opposite / adjacent;
csc_45 = hypotenuse/opposite;
sec_45 = hypotenuse/adjacent;
cot_45 = adjacent / opposite;

printf('ANGLE = 45 degree')
printf('\nsin(45)=  %.4f ; cos(45)= %.4f;  tan(45)= %.2f;\n',sin_45,cos_45,tan_45)
printf('csc(45)=  %.4f ; sec(45)= %.4f;  cot(45)= %.2f;',csc_45,sec_45,cot_45)
