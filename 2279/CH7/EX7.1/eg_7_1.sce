//DTFS of x[n] =sin(Won)
clear;
close;
clc;
n = 0:0.01:5;
N = 6;
Wo = 2*%pi/N;
xn = sin(Wo*n);
for k =0:N-2
  C(k+1,:) = exp(-sqrt(-1)*Wo*n.*k);
  a(k+1) = xn*C(k+1,:)'/length(n);
  if(abs(a(k+1))<=0.1) 
    a(k+1)=0;
  end
end
a =a'
a_conj = conj(a);
ak = [a_conj($:-1:1),a(2:$)]
k = -(N-2):(N-2);
plot2d3('gnn',k,-imag(ak),5)
plot2d3('gnn',N+k,-imag(ak),5)
plot2d3('gnn',-(N+k),-imag(ak($:-1:1)),5)
xtitle('ak','k','ak')
