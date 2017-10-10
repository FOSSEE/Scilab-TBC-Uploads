//chapter 24 Ex 18

clc;
clear;
close;
altitude=8; perimeter=32;
//from given the equation formed is x^2=(8^2)+(16-x)^2
side=320/32;
base=perimeter-2*side;
area=(1/2)*base*side;
mprintf("The area of the triangle is %.0f square cm",area);
