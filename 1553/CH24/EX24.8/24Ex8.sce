//chapter 24 Ex 8

clc;
clear;
close;
peri1=40; peri2=32;
side1=peri1/4;   //side=perimeter/number of sides
side2=peri2/4;
area3=side1^2-side2^2; //given
side3=sqrt(area3);
peri3=side3*4;
mprintf("The perimeter of 3rd square is %d cm",peri3);
