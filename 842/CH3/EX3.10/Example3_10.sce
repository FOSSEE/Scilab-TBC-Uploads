//clear//
//Example3.10:DTFS of x[n] =sin(Won)
clear;
close;
clc;
n = 0:0.01:5;
N = 5;
Wo = 2*%pi/N;
xn = sin(Wo*n);
for k =0:N-2
  C(k+1,:) = exp(-sqrt(-1)*Wo*n.*k);
  a(k+1) = xn*C(k+1,:)'/length(n);
  if(abs(a(k+1))<=0.01) 
    a(k+1)=0;
  end
end
a =a'
a_conj = conj(a);
ak = [a_conj($:-1:1),a(2:$)]
k = -(N-2):(N-2);
//
figure
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-8,-1;8,1];
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
plot2d3('gnn',k,-imag(ak),5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
plot2d3('gnn',N+k,-imag(ak),5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
plot2d3('gnn',-(N+k),-imag(ak($:-1:1)),5)
poly1 = a.children(1).children(1);
poly1.thickness = 3; 
title('ak')
