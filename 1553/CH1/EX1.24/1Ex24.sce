//chapter 1 Ex 24

clc;
clear;
close;
n1=684; n2=759; n3=413; n4=676;
 //in order to find unit digit in product of above 4 numbers, we find product of unit digits of each of these numbers
//unit places of each of the 4 numbers
unit1=modulo(modulo(n1,100),10);  //since given number is 3 digit
unit2=modulo(modulo(n2,100),10);
unit3=modulo(modulo(n3,100),10);
unit4=modulo(modulo(n4,100),10);
unitProduct=unit1*unit2*unit3*unit4;
printf("The unit digit of product is %d.",modulo(unitProduct,10));
