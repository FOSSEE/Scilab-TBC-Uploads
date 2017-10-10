//chapter 1 Ex 30

clc;
clear;
close;
n1=17; n2=80; count=0;
for i=n1:n2
    if modulo(i,6)==0 then count=count+1;
    end
end
mprintf("The count of numbers divisible by 6 is %d",count);
