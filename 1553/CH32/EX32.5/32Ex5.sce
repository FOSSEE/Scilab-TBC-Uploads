//Chapter 32 Ex 5

clc;
close;
clear;
//according to prob statement and forming the equation considering sum as x we get (x/2)+(2x/5)-(8x/9)=40 and solving equation
for x=1:5000
    if (x/2)+((2*x)/5)-((8*x)/9)==40 
       break;
    end
end
mprintf("The amount of the bill is Rs %d",x);
