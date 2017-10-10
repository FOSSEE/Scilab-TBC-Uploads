//chapter 6 Ex 3

clc;
clear;
close;
a=[];
for i=1:20
    a(i)=7*i;
end
Sum=sum(a);
Average=Sum/size(a,"r");
printf("The average of first 20 multiples of 7 is %3.2f",Average);
