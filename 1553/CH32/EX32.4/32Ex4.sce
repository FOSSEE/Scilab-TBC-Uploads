//Chapter 32 Ex 4

clc;
close;
clear;
t=6/12; r=25/2; dif=25;
// after solving equation of difference between SI and TD considering amount as x we get (x/16)-(x/17)=25 and solving it
for x=1:7000
   if ((x/16)-(x/17))==25
       break;
       end
end
mprintf("The sum is Rs.%d",x);

