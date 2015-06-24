//clear//
//Example3.15:DTFS:Periodic Convolution Property
clear;
clc;
close;
x = [1,1,0,0,0,0,1];
X = fft(x);
W = X.*X;
w = ifft(W);
w = abs(w);
for i =1:length(x)
  if (abs(w(i))<=0.1)
     w(i) = 0;
   end
end
w = [w($:-1:1) w(2:$)];
N = length(x);
figure
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3('gnn',[-(N-1):0,1:N-1],w,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('w[n]')
xlabel('                                                       n')
