//EXAMPLE 6.12.e
clear;
clc;
x1 = [1,1,1,1];
x2 = [2,2,2,2];
a = 1;
b = 1;
for n = 1:length(x1)
  x3(n) = a*x1(n)+b*x2(n);
end
for n = 1:length(x1)
  y1(n) = exp(x1(n));
  y2(n) = exp(x2(n));
  y3(n) = exp(x3(n));
end
for n = 1:length(y1)
  z(n) = a*y1(n)+b*y2(n);
end
count = 0;
for n =1:length(y1)
  if(y3(n)== z(n))
    count = count+1;
  end
end
if(count == length(y3))
   disp('Since It satisifies the superposition principle')
   disp('The given system is a Linear system')
   y3
   z
  else
    disp('Since It does not satisify the superposition principle')
    disp('The given system is a Non-Linear system')
end
