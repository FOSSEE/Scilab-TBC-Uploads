//EXAMPLE 2.13.C
clear;
clc;
x1 = [1,1,1,1];
x2 = [2,2,2,2];
a = 1;
b = 1;
for t = 1:length(x1)
  x3(t) = a*x1(t)+b*x2(t);
end
for t = 1:length(x1)
  y1(t) = (x1(t)^2);
  y2(t) = (x2(t)^2);
  y3(t) = (x3(t)^2);
end
for t = 1:length(y1)
  z(t) = a*y1(t)+b*y2(t);
end
count = 0;
for n =1:length(y1)
  if(y3(t)== z(t))
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
