
clear;
clc;
close;
x=poly(0,'x');
p1=3/(x-2);
p2=5/(x-1);
// given, 3/(x-2)=5/(x-1)
for x=0.0:0.1:10.0
if(3*(x-1)==5*(x-2))
  format(7)
x
   break
end
end
