//clear//
//Example3.11:DTFS of 
//x[n] = 1+sin(2*%pi/N)n+3cos(2*%pi/N)n+cos[(4*%pi/N)n+%pi/2]
clear;
close;
clc;
N = 10;
n = 0:0.01:N;
Wo = 2*%pi/N;
xn =ones(1,length(n))+sin(Wo*n)+3*cos(Wo*n)+cos(2*Wo*n+%pi/2);
for k =0:N-2
  C(k+1,:) = exp(-sqrt(-1)*Wo*n.*k);
  a(k+1) = xn*C(k+1,:)'/length(n);
  if(abs(a(k+1))<=0.1) 
    a(k+1)=0;
  end
end
a =a';
a_conj =conj(a);
ak = [a_conj($:-1:1),a(2:$)];
Mag_ak = abs(ak);
for i = 1:length(a)
  Phase_ak(i) = atan(imag(ak(i))/(real(ak(i))+0.0001));
end
Phase_ak = Phase_ak'
Phase_ak = [Phase_ak(1:$-1) -Phase_ak($:-1:1)];
k = -(N-2):(N-2);
//
figure
subplot(2,1,1)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3('gnn',k,real(ak),5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('Real part of(ak)')
xlabel('                                                       k')
subplot(2,1,2)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3('gnn',k,imag(ak),5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('imaginary part of(ak)')
xlabel('                                                       k')
//
figure
subplot(2,1,1)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3('gnn',k,Mag_ak,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('abs(ak)')
xlabel('                                                       k')
subplot(2,1,2)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot2d3('gnn',k,Phase_ak,5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('<(ak)')
xlabel('                                                       k')
