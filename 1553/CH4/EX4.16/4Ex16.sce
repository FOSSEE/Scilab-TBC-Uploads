//chapter 4 Ex 16

clc;
clear;
close;
a=1;
for n=2:99
    a= a*(1-(1/(1+n)));
end
mprintf("The value is %.2f",a);
