//chapter 24 Ex 4

clc;
clear;
diagonal=17;
perimeter=46;
//perimeter=2(l+b), area=l*b, diagonal^2=l^2+b^2 using hypotenus
//using above conditions, the equation diagonal^2+2l*b=(perimeter/2)^2
area=((perimeter/2)^2-diagonal^2)/2;
mprintf("The area of rectangle is %d square cm",area);
