clear;
clc;
printf("\n Example 1.8");
a=[2;5;4;64;78]
i=1;
x=1;............//initialising sum equals to one.
c=1;..............// initialising count equals to one.
while i<6
    c=c+a(i);........//sum
    x=x+1;...............////step count
    i=i+1;
end
printf("\n no. in the list are a=")
printf("\n %d",a);
printf("\n sum is=%d",(c-1));
printf("\n count is=%d",(x-1));