//chapter 4 Ex 19

clc;
clear;
close;
Length=(7*12+9);   //converting into inches
Length_part=Length/3;
Length_part_ft=Length_part/12;
Length_part_in=modulo(Length_part,12);
printf("The length of each part is %d ft %d inches",Length_part_ft,Length_part_in);
