
clear;
clc;
close;
x=poly(0,'x');
p1=10*(x-4);
p2=4*(2*x-1)+5;
p3=p1-p2;
x=roots(p3);
left=10*(x-4);//substitution 
right=4*(2*x-1)+5;
if(left==right)
  format(5)
x
end
