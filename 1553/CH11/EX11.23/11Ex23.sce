//Chapter 9 Ex 23

clc;
close;
clear;
x=poly(0,'x');
tot=3000;
CP=x;
CPcarr=(tot-x);
gainh=20/100; lossc=10/100; gaintot=2/100;    //given
for x=1:2000
    if ((x/5)-((3000-x)/10))==60
        break;
            end
end
mprintf("The cost price of the horse is Rs.%d",x);
