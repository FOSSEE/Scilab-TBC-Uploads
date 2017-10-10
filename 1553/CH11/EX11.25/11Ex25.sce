//Chapter 9 Ex 25

clc;
close;
clear;
x=poly(0,'x');
dis2=12.5/100;
dis1=x;
LP=150; SP=105;
for x=1:50
    if (((1-dis2)*(100-x)*LP)/100)==SP 
        break;
    end
end
mprintf("First Discount=%d percent",x);
