//clear//
//Example3.14:DTFS
//Finding x[n] using parseval's relation of DTFS
clear;
close;
clc;
N = 6;
n = 0:N-1;
a(1) = 1/3;
a(2)=0;
a(4)=0;
a(5)=0;
a1 = (1/6)*((-1)^n);
x =0;
for k = 0:N-2
  if(k==2)
    x = x+a1;
  else
    x =  x+a(k+1);
  end
end
x = [x($:-1:1),x(2:$)];
n = -(N-1):(N-1);
//
figure
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3('gnn',n,x,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('x[n]')
xlabel('                                                       n')
