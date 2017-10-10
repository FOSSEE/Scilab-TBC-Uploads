//chapter 10 Ex 19

clc;
clear;
close;
dec=50/100; inc=50/100;
//let original be Rs.100
original=100;
final=(dec*original)*(1+inc);
if(original>final)
    
changePercent=original-final;
mprintf("The salary of raman is decreased by %d percent",changePercent);
else
    changePercent=final-original;
    mprintf("The salary of raman is increased by %d percent",changePercent);
end
