
//8 times a number is decreased by 5 the result is 123
clear;
clc;
close;
x=poly(0,'x');
//let x be the number
expr=8*x-5;
for x=1:100
  if((8*x-5)==123)
    mprintf("the number is %i",x)
  end
  end

