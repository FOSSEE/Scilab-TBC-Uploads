
clear;
clc;
close;
x=poly(0,'x');
p1=(6*x-5);
p2=(2*x+9);
p3=p1-p2;
x=roots(p3)
left=6*x-5; //check by substituion 
right=2*x+9;
if(left==right)
  mprintf("satisfies the equation \n")
end

