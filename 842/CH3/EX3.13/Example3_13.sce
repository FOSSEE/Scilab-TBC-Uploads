//clear//
//Example3.13:DTFS
//Expression of periodic sequence using
//the summation two different sequence
clear;
close;
clc;
N = 5;
n = 0:N-1;
x1 = [1,1,0,0,1];
x1 = [x1($:-1:1) x1(2:$)]; // Square Wave x1[n]
x2 = [1,1,1,1,1];
x2 = [x2($:-1:1) x2(2:$)];//DC sequence of x2[n]
x = x1+x2;//sum of x1[n] & x2[n]
//Zeroth DTFS coefficient of dc sequence
c(1) = 1;
//Zeroth DTFS coefficient of square waveform
b(1) = 3/5;
//Zeroth DTFS coefficient of sum of x1[n] & x2[n]
a(1) = b(1)+c(1);
//
Wo = 2*%pi/N;
for k =1:N-1
  a(k+1) = sin((3*%pi*k)/N)/sin(%pi*k/N);
  a(k+1) = a(k+1)/N;
  if(abs(a(k+1))<=0.1)
    a(k+1) =0;
  end
end
a =a';
a_conj =conj(a);
ak = [a_conj($:-1:1),a(2:$)];
k = -(N-1):(N-1);
n = -(N-1):(N-1);
//
figure
subplot(3,1,1)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3('gnn',n,x,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('x[n]')
xlabel('                                                       n')
subplot(3,1,2)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3('gnn',n,x1,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('x1[n]')
xlabel('                                                       n')
subplot(3,1,3)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3('gnn',n,x2,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('x2[n]')
xlabel('                                                       n')
