//chapter 10 Ex 11

clc;
clear;
close;
Diff=1660;

y=poly(0,'y');
x=Diff+y;        //equation 1,given difference
x=(125/75)*y;    //equation 2
for y=1:5000
  if Diff+y ==(125/75)*y
    mprintf("y=%i \n ",y);
    break
  end
end
disp("substitute value of y in any one of the above equations to find x");
x=(125/75)*y;

ans=[x y];
printf("\n Thus the two numbers are %d and %d",ans(1),ans(2));
