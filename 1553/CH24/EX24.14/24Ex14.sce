//Chapter 24 Ex 14

clc;
clear;
close;
tc1=270; rate1=5;
area1=tc1/rate1;     //area of floor
//given length is 3/2 of breadth.
//breadth=x then length=(3*x/2) and area= (x*3*x)/2
b=sqrt(area1*(2/3));
l=(3/2)*b;
tc2=1720; rate2=10;
area2=tc2/rate2;      //papered area
area3=8;              //given area of a door and 2 windows
totarea=area2+area3;
ht=totarea/(2*(l+b));
mprintf("The length,bredth and height of the room are %d m,%d m,%d m respectively.",l,b,ht);
