clear;
clc;
close;
x=poly(0,'x');
//let x be the number of men.then, x+10 is no. of women as per given data
money_paid_by_men=20*x;
money_paid_by_women=15*x + 10;
total=1620
expr=8*x-5;
for x=1:100
  if((20*x + 15*(x + 10))==1620)
    mprintf("the number of  men is %i \n",x)
    mprintf("the number of women is  %i",x+10)
  end
end
 

