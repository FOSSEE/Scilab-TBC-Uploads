
clear;
clc;
close;
x=poly(0,'x');
p1=4*x-(x-2)/3;
p2=5+(2*x+1)/4;
p3=p1-p2;
x=roots(p3) 
left=4*x-(x-2)/3;//substitution
right=5+(2*x+1)/4;
if(left==right)
mprintf("satisfies the equation \n")
end

