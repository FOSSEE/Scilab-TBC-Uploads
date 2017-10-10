//chapter 4 Ex 17

clc;
clear;
close;
a=0;
for n=2:9
    a= a+(1/(n*(n+1)));
end
mprintf("The value is %0.2f",a);
